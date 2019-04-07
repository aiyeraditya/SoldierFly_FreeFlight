function [wingAngles, ypr] = calculatestrokeangle(xyz)
% 
% Original code by Ty Hedrick
% Modified by Dinesh Natesan, 12th Oct 2015

% constants
rwt=4; % right wing tip point #
rwb=2; % right wing base point #
head=1; % head point #
lwb=3; % left wing base point #
lwt=5; % left wing tip point #

% Get CoM
CoM= (xyz(:,rwb*3-2:rwb*3)+xyz(:,lwb*3-2:lwb*3))*(1/2); %xyz(:,head*3-2:head*3)+(1/3)*(xyz(:,abdo*3-2:abdo*3)-xyz(:,head*3-2:head*3))
xyzC=xyz-repmat(CoM,1,size(xyz,2)/3);

% compute roll from the two wing bases (attempt to equalize them at some -Z
% value by rotating about an axis passing through the CoM and head)
headpt=xyzC(:,3*head-2:3*head);
rwbpt=xyzC(:,3*rwb-2:3*rwb);
lwbpt=xyzC(:,3*lwb-2:3*lwb);
headproj=[xyzC(:,3*head-2:3*head-1),xyzC(:,3*head)*0];
pitchax=headproj*[0 1 0;-1 0 0; 0 0 1];
for i=1:size(headpt,1)
x2=headpt(i,1);
x1=0;
x3=pitchax(i,1);
y2=headpt(i,2);
y1=0;
y3=pitchax(i,2);
z2=headpt(i,3);
z1=0;
z3=pitchax(i,3);
A=det([1 y1 z1;1 y2 z2;1 y3 z3]);
B=det([x1 1 z1;x2 1 z2;x3 1 z3]);
C=det([x1 y1 1;x2 y2 1;x3 y3 1]);
D=-det([x1 y1 z1;x2 y2 z2;x3 y3 z3]);
X=rwbpt(i,:);
perp=(A*X(1)+B*X(2)+C*X(3)+D)/sqrt(A*A+B*B+C*C);
hyp=sqrt((X(1))^2+(X(2))^2+(X(3))^2);
roll(i,1)=asin(perp/hyp);
signa=sign(perp/hyp);
signb=sign(dot(X,pitchax(i,:)));
if signb<0
    if signa>0
        roll(i,1)=pi-roll(i,1);
    elseif signa<0
        roll(i,1)=-pi-roll(i,1);
    end
end
hyp=sqrt(headpt(i,1)*headpt(i,1)+headpt(i,2)*headpt(i,2)+headpt(i,3)*headpt(i,3));
perp=-headpt(i,3);
pitch(i,1)=asin(perp/hyp);
yaw(i,1)=atan2(headproj(i,2),headproj(i,1));
[Hib,~] = aeroROTM(roll(i,1),pitch(i,1),yaw(i,1));
for j=1:5
    xyzRPY(i,3*j-2:3*j)=applyAeroRotationMatrix(xyzC(i,3*j-2:3*j),Hib);
end
end
% create output variables
ypr=[yaw,pitch,roll];
xyzBRF=xyzRPY;

% Right wing
% Calculate deviation angle and stroke angle
tip=xyzBRF(:,rwt*3-2:rwt*3)-xyzBRF(:,rwb*3-2:rwb*3);
ePhi=acos(dot(tip(:,1:3),[tip(:,1:2),tip(:,3)*0],2)./(rnorm(tip(:,1:3)).*rnorm([tip(:,1:2),tip(:,3)*0])));
idx=find(tip(:,3)>0);
ePhi(idx)=ePhi(idx)*-1;
eTheta=acos(dot(repmat([0,1,0],size(tip,1),1),[tip(:,1:2),tip(:,3)*0],2)./rnorm([tip(:,1:2),tip(:,3)*0]));
idx=find(tip(:,1)<0);
eTheta(idx)=eTheta(idx)*-1;

% store the estimates
wingAngles(:,1,2)=ePhi;      % Deviation angle
wingAngles(:,2,2)=eTheta;    % Stroke angle.

% Left wing
% Calculate deviation angle and stroke angle
tip=xyzBRF(:,lwt*3-2:lwt*3)-xyzBRF(:,lwb*3-2:lwb*3);
ePhi=acos(dot(tip(:,1:3),[tip(:,1:2),tip(:,3)*0],2)./(rnorm(tip(:,1:3)).*rnorm([tip(:,1:2),tip(:,3)*0])));
idx=find(tip(:,3)>0);
ePhi(idx)=ePhi(idx)*-1;
eTheta=acos(dot(repmat([0,-1,0],size(tip,1),1),[tip(:,1:2),tip(:,3)*0],2)./rnorm([tip(:,1:2),tip(:,3)*0]));
idx=find(tip(:,1)<0);
eTheta(idx)=eTheta(idx)*-1;

% store the estimates
wingAngles(:,1,1)=ePhi;  % Deviation angle
wingAngles(:,2,1)=eTheta; % Stroke angle.

end


%%% subfunctions
function [Hib,Hbi] = aeroROTM(roll,pitch,yaw)
%
% This function generates two rotation matrices, Hib & Hbi, from the roll
% pitch & yaw angles.  These matrices are as described in Stengel, section
% 2.2.
% Vb = vector in body space
% Vi = vector in inertial space
%
% Vb = Hib*Vi
% Vi = Hbi*Vb
%
% pitchR=[cos(pitch),0,-sin(pitch);,0,1,0;sin(pitch),0,cos(pitch)];
% rollR=[1,0,0;0,cos(roll),sin(roll);0,-sin(roll),cos(roll)];
% yawR=[cos(yaw),sin(yaw),0;-sin(yaw),cos(yaw),0;0,0,1];
%
%Hib=yawR*pitchR*rollR;

Hib = [cos(pitch)*cos(yaw), cos(pitch)*sin(yaw), -sin(pitch); 
   (-cos(roll)*sin(yaw)+sin(roll)*sin(pitch)*cos(yaw)), ...
   (cos(roll)*cos(yaw)+sin(roll)*sin(pitch)*sin(yaw)), ...
   sin(roll)*cos(pitch);
  (sin(roll)*sin(yaw)+cos(roll)*sin(pitch)*cos(yaw)), ...
  (-sin(roll)*cos(yaw)+cos(roll)*sin(pitch)*sin(yaw)), ...
  cos(roll)*cos(pitch)];

Hbi=inv(Hib);
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% applyAeroRotationMatrix
% 
function [output]=applyAeroRotationMatrix(input,rotm)

% function [output]=applyAeroRotationMatrix(input,rotm);
%
% Applies a rotation matrix to input where input is a Nx3 matrix with each
% row being a set of [X,Y,Z] coordinates and rotm is a 3x3 rotation matrix.
% The operation is [rotm]*[X;Y;Z]=[X';Y';Z'], with [X';Y';Z'] rotated into
% column form.
%
% This function is vectorized and much faster than applying the rotation
% within a loop and quite a bit neater looking than typing the vectorized
% bit out repeatedly.
%
% Ty Hedrick
% 06/06/2007

output(:,1)=input(:,1).*rotm(1,1)+input(:,2).*rotm(1,2)+input(:,3).*rotm(1,3);
output(:,2)=input(:,1).*rotm(2,1)+input(:,2).*rotm(2,2)+input(:,3).*rotm(2,3);
output(:,3)=input(:,1).*rotm(3,1)+input(:,2).*rotm(3,2)+input(:,3).*rotm(3,3);
end

function [norms] = rnorm(matrix)

% function [norms] = rnorm(matrix)
%
% Description: rnorm returns a column of norm values.  Given an input
% 	       matrix of X rows and Y columns it returns an X by 1
%	       column of norms.

% for i=1:size(matrix,1)
%   norms(i,1)=norm(matrix(i,:));
% end

% possibly a faster method
norms=sqrt(dot(matrix',matrix'))';
end