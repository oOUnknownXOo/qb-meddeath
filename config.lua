---@class Config
Config = Config or {}

-- ╔═══════════════════════════════════════════════════════════════════════════╗
-- ║                         QBCore Death & EMS Config                         ║
-- ║                    Cinematic Death Screen & Dispatch                      ║
-- ╚═══════════════════════════════════════════════════════════════════════════╝

-- ─────────────────────────────────────────────────────────────────────────────
-- Death Timers (in seconds)
-- ─────────────────────────────────────────────────────────────────────────────

-- Duration of the "Critical Condition" / bleedout phase before player is legally dead
-- Players can call EMS during this phase or attempt to revive themselves
Config.BleedoutTimer = 300  -- 5 minutes

-- Duration to wait after bleedout timer expires before automatic respawn at hospital
-- If no EMS arrives or player doesn't respawn manually, they auto-respawn here
Config.RespawnTimer = 60    -- 1 minute

-- ─────────────────────────────────────────────────────────────────────────────
-- Action Mechanics (milliseconds)
-- ─────────────────────────────────────────────────────────────────────────────

-- Time required to hold down a key to complete an action (distress signal, respawn)
-- Lower = faster action, Higher = more difficulty
Config.HoldDuration = 3000  -- 3 seconds

-- ─────────────────────────────────────────────────────────────────────────────
-- Job Configuration
-- ─────────────────────────────────────────────────────────────────────────────

-- Database job name for EMS/Medics
-- Only players with this job receive dispatch calls
Config.EMSJob = 'ambulance'

-- Job grades that can accept medic calls (0 = all grades)
-- Set to {} to allow all grades, or specify grades like {1, 2, 3}
Config.EMSGrades = {}

-- Respawn location for deceased players (hospital)
Config.RespawnLocation = {
    coords = vector3(297.55, -349.93, 45.16),
    heading = 160.0,
}

-- ─────────────────────────────────────────────────────────────────────────────
-- EMS Dispatch & Map Blips
-- ─────────────────────────────────────────────────────────────────────────────

-- Radius (in meters) to cluster multiple casualty calls into one map blip
-- Prevents map clutter during mass casualty events
-- Set to 0 to disable clustering
Config.ClusterRadius = 50.0

-- Blip sprite ID for downed player (use 227 for medical cross)
Config.BlipSprite = 227

-- Blip color (0-255, use 1 for red)
Config.BlipColor = 1

-- Map blip scale
Config.BlipScale = 0.8

-- Notification duration in milliseconds
Config.NotificationDuration = 5000

-- ─────────────────────────────────────────────────────────────────────────────
-- Camera & Visual Effects
-- ─────────────────────────────────────────────────────────────────────────────

-- Timecycle modifier applied when player dies (desaturates world)
-- Examples: 'hud_def_desat_Trevor', 'REDMIST', 'MP_LOTDP_TRANSITION'
Config.TimecycleModifier = 'hud_def_desat_Trevor'

-- Camera position offset when player dies (relative to player)
Config.CameraOffset = vector3(0.0, 0.0, 10.0)  -- Overhead view

-- Camera rotation (pitch, roll, yaw in degrees)
Config.CameraRotation = vector3(-90.0, 0.0, 0.0)  -- Looking straight down

-- FOV (Field of View) for death camera
Config.CameraFOV = 50.0

-- ─────────────────────────────────────────────────────────────────────────────
-- Key Bindings
-- ─────────────────────────────────────────────────────────────────────────────

-- Control IDs for various actions
-- Reference: https://docs.fivem.net/docs/game-references/controls/
Config.Keys = {
    DistressSignal = 47,    -- G key - Call EMS
    Respawn = 38,           -- E key - Respawn at hospital
}

-- ─────────────────────────────────────────────────────────────────────────────
-- UI & Localization
-- ─────────────────────────────────────────────────────────────────────────────

-- Enable/disable NUI debugging (shows extra console messages)
Config.Debug = false

-- Language/Text customization
Config.Strings = {
    -- Critical condition state
    critical_condition = 'CRITICAL CONDITION',
    bleeding_out = 'BLEEDING OUT',
    hold_distress = 'HOLD [G] TO DISTRESS SIGNAL',
    signal_broadcasted = 'SIGNAL BROADCASTED',
    
    -- Legal death state
    you_have_died = 'YOU HAVE DIED',
    succumbed = 'You have succumbed to your injuries.',
    respawn_available = 'RESPAWN AVAILABLE IN',
    hold_respawn = 'HOLD [E] TO RESPAWN AT HOSPITAL',
    
    -- EMS dispatch
    priority_1 = 'Priority 1 Trauma',
    ems_en_route = 'EMS is en route to your location',
    ems_accepted = 'EMS officer accepted your call',
    no_ems_available = 'No EMS available, automatic respawn in progress...',
}

-- ─────────────────────────────────────────────────────────────────────────────
-- Feature Flags
-- ─────────────────────────────────────────────────────────────────────────────

-- Allow players to manually respawn after bleedout timer expires
Config.AllowManualRespawn = true

-- Allow EMS to revive players (if you have a revive script)
Config.AllowRevive = true

-- Show EMS dispatch notifications (requires qb-core notify)
Config.ShowEMSNotifications = true

-- Auto-respawn players if no EMS accepts call within this time (seconds)
-- Set to 0 to disable auto-respawn
Config.AutoRespawnTimer = 300  -- 5 minutes

return Config
