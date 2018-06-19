% parseGuid:
% Parses a Microsoft encoded GUID from bytes
%
function guid = parseGuid (guidBytes)

guid = strrep(sprintf(...
    '%2x%2x%2x%2x-%2x%2x-%2x%2x-%2x%2x-%2x%2x%2x%2x%2x%2x',...
    guidBytes(4),...
    guidBytes(3),...
    guidBytes(2),...
    guidBytes(1),...
    ...
    guidBytes(6),...
    guidBytes(5),...
    ...
    guidBytes(8),...
    guidBytes(7),...
    ...
    guidBytes(9),...
    guidBytes(10),...
    ...
    guidBytes(11),...
    guidBytes(12),...
    guidBytes(13),...
    guidBytes(14),...
    guidBytes(15),...
    guidBytes(16)),...
    ' ', '0'); %Format %2x leaves a space in the leading 0 for 0x01-0x0F

end