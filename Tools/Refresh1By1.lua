--[[*********************************************************************************
  @author:   ZhaoXiangYu
  *date:     2023-07-19 15:42:10
  *desc:     刷新列表一个一个
**********************************************************************************]]

---@class Refresh1By1
local Refresh1By1 = Class('Refresh1By1')

function Refresh1By1:Ctor(addSec, length)
    self.addSec = addSec
    self.during = 0
    self.len = length or 0
    self.cur = 0
    self.bPlaying = false
end

function Refresh1By1:Dtor()
    self.addSec = nil
    self.during = nil
    self.len = nil
    self.bPlaying = nil
    self.cur = nil
end

function Refresh1By1:OnUpdate(deltaTime)
    if not self.bPlaying then
        return
    end
    self:CheckLength()
    self.during = self.during + deltaTime
    if self.during >= self.addSec then
        self.during = 0
        self:AddOne()
    end
end

function Refresh1By1:Play(length)
    self.bPlaying = true
    self:Clear()
    if length then
        self.len = length
    end
end

function Refresh1By1:Stop()
    self.bPlaying = false
end

function Refresh1By1:Clear()
    self.cur = 0
    self.during = 0
    self:OnClear()
end

function Refresh1By1:AddOne()
    self.cur = self.cur + 1
    self:OnUpdateLength(self.cur)
end

function Refresh1By1:CheckLength()
    if self.cur >= self.len then
        self:Stop()
    end
end

--↓---------↓↓--------↓↓-----------↓↓--interface--↓↓------------↓↓---------↓↓---------↓--
function Refresh1By1:OnClear()
    -- body
end

function Refresh1By1:OnUpdateLength(len)
    -- body
end


return Refresh1By1
