local l_ReplicatedStorage_0 = game:GetService("ReplicatedStorage");

local v13 = {
    Alligator = {
        DroppedLoot = {
            Meat = NumberRange.new(2, 2), 
            Hide = NumberRange.new(2, 2)
        }, 
        Animations = {
            Walk = "rbxassetid://12559845060", 
            Run = "rbxassetid://12559847250", 
            Idle = "rbxassetid://12559811691", 
            Attack = {
                "rbxassetid://12559830436"
            }
        }, 
        StateType = "Animal", 
        States = {
            Idle = true, 
            Walk = true, 
            Hostile = true, 
            Attacking = true
        }, 
        Health = 100, 
        WalkSpeed = 6, 
        RunSpeed = 15, 
        MaxSlopeAngle = 1.0471975511965976, 
        IsAggressive = true, 
        HostileDetectionRange = 50, 
        MinimumAttacks = 3, 
        Damage = 15, 
        DamageRange = 2, 
        AttackCooldown = 1.5, 
        AttackSound = "AttackGator"
    }, 
    ["Arctic Wolf"] = {
        DroppedLoot = {
            Meat = NumberRange.new(2, 2), 
            Hide = NumberRange.new(2, 2)
        }, 
        Animations = {
            Walk = "rbxassetid://12559791454", 
            Run = "rbxassetid://12559793998", 
            Idle = "rbxassetid://12569237094", 
            Attack = {
                "rbxassetid://12559783630"
            }
        }, 
        StateType = "Animal", 
        States = {
            Idle = true, 
            Walk = true, 
            Hostile = true, 
            Attacking = true
        }, 
        Health = 100, 
        WalkSpeed = 6, 
        RunSpeed = 20, 
        MaxSlopeAngle = 1.0471975511965976, 
        IsAggressive = true, 
        HostileDetectionRange = 50, 
        MinimumAttacks = 3, 
        Damage = 10, 
        DamageRange = 2, 
        AttackCooldown = 1.5, 
        AttackSound = "AttackWolf"
    }, 
    Bear = {
        DroppedLoot = {
            Meat = NumberRange.new(6, 6), 
            Hide = NumberRange.new(3, 3)
        }, 
        Animations = {
            Walk = "rbxassetid://12559860093", 
            Run = "rbxassetid://12559858822", 
            Idle = "rbxassetid://12559857185", 
            Attack = {
                "rbxassetid://12559861526"
            }
        }, 
        StateType = "Animal", 
        States = {
            Idle = true, 
            Walk = true, 
            Hostile = true, 
            Attacking = true
        }, 
        Health = 200, 
        WalkSpeed = 6, 
        RunSpeed = 20, 
        MaxSlopeAngle = 1.0471975511965976, 
        IsAggressive = true, 
        HostileDetectionRange = 50, 
        MinimumAttacks = 3, 
        Damage = 15, 
        DamageRange = 2, 
        AttackCooldown = 1.5, 
        AttackSound = "AttackBear"
    }, 
    Boar = {
        DroppedLoot = {
            Meat = NumberRange.new(2, 2), 
            Hide = NumberRange.new(1, 1)
        }, 
        Animations = {
            Walk = "rbxassetid://12559888117", 
            Run = "rbxassetid://12559886803", 
            Attack = {
                "rbxassetid://12559891498", 
                "rbxassetid://12559889799"
            }, 
            Idle = "rbxassetid://12559884702", 
            Eat = "rbxassetid://11646370894"
        }, 
        StateType = "Animal", 
        States = {
            Idle = true, 
            Walk = true, 
            Eat = true, 
            Hostile = true, 
            Attacking = true
        }, 
        Health = 80, 
        WalkSpeed = 6, 
        RunSpeed = 17, 
        MaxSlopeAngle = 1.0471975511965976, 
        HostileDetectionRange = 50, 
        MinimumAttacks = 3, 
        Damage = 7, 
        DamageRange = 2, 
        AttackCooldown = 1.5, 
        AttackSound = "AttackBoar"
    }, 
    Chicken = {
        DroppedLoot = {
            Chicken = NumberRange.new(1, 1)
        }, 
        Animations = {
            Idle = "rbxassetid://11646225310", 
            Walk = "rbxassetid://12559877940", 
            Eat = "rbxassetid://12559875722"
        }, 
        StateType = "Animal", 
        States = {
            Idle = true, 
            Walk = true, 
            Eat = true, 
            Scared = true, 
            Attracted = true, 
            Tamed = true, 
            TamedWalk = true, 
            TamedEat = true, 
            TamedFollow = true, 
            BreedSearch = true, 
            Breeding = true
        }, 
        Health = 15, 
        WalkSpeed = 6, 
        RunSpeed = 20, 
        MaxSlopeAngle = 1.0471975511965976, 
        TamedData = {
            TameItemName = "Wheat", 
            TameChance = 1, 
            TameBadLuckProtection = 0.25, 
            BreedExhaustionTime = 120, 
            ChildGrowupTime = 300, 
            ChildColorVariations = {
                Body = Color3.fromRGB(230, 225, 71), 
                Head = Color3.fromRGB(230, 225, 71), 
                LeftLeg = Color3.fromRGB(230, 225, 71), 
                RightLeg = Color3.fromRGB(230, 225, 71)
            }
        }, 
        SpawnItem = "Egg", 
        SpawnItemTimeRange = NumberRange.new(10, 120)
    }, 
    Cow = {
        DroppedLoot = {
            Meat = NumberRange.new(3, 3), 
            Hide = NumberRange.new(1, 1)
        }, 
        Animations = {
            Idle = "rbxassetid://12559884702", 
            Walk = "rbxassetid://12559888117", 
            Run = "rbxassetid://14042726686"
        }, 
        StateType = "Animal", 
        States = {
            Idle = true, 
            Walk = true, 
            Scared = true, 
            Attracted = true, 
            Tamed = true, 
            TamedWalk = true, 
            TamedFollow = true, 
            BreedSearch = true, 
            Breeding = true
        }, 
        Health = 50, 
        WalkSpeed = 3, 
        RunSpeed = 16, 
        MaxSlopeAngle = 1.0471975511965976, 
        TamedData = {
            TameItemName = "Wheat", 
            TameChance = 0.1, 
            TameBadLuckProtection = 0.25, 
            BreedExhaustionTime = 120, 
            ChildGrowupTime = 300
        }
    }, 
    Deer = {
        DroppedLoot = {
            Meat = NumberRange.new(2, 2), 
            Hide = NumberRange.new(1, 1)
        }, 
        Animations = {
            Walk = "rbxassetid://12559896056", 
            Idle = "rbxassetid://12559894181", 
            Run = "rbxassetid://12559897592", 
            Eat = "rbxassetid://11645667359"
        }, 
        StateType = "Animal", 
        States = {
            Idle = true, 
            Walk = true, 
            Eat = true, 
            Scared = true
        }, 
        Health = 50, 
        WalkSpeed = 6, 
        RunSpeed = 25, 
        MaxSlopeAngle = 1.0471975511965976
    }, 
    Monkie = {
        DroppedLoot = {
            Banana = NumberRange.new(1, 3)
        }, 
        Animations = {
            Idle = "rbxassetid://129457775737636", 
            Walk = "rbxassetid://71894715884127", 
            Run = "rbxassetid://87569472734633", 
            Attack = {
                "rbxassetid://92868726237970"
            }
        }, 
        StateType = "Animal", 
        States = {
            Idle = true, 
            Hostile = true, 
            Walk = true, 
            Attacking = true, 
            RangedAttacking = true, 
            Curious = true, 
            Trading = true
        }, 
        TradeLoot = {
            Banana = {
                [1] = {
                    {
                        Meat = NumberRange.new(1, 1), 
                        Hide = NumberRange.new(1, 1), 
                        Carrot = NumberRange.new(1, 1), 
                        Rope = NumberRange.new(1, 1), 
                        Log = NumberRange.new(1, 1), 
                        Stone = NumberRange.new(1, 1), 
                        Leaf = NumberRange.new(1, 3), 
                        Copper = NumberRange.new(1, 2), 
                        Pepper = NumberRange.new(1, 3), 
                        Mushroom = NumberRange.new(1, 1), 
                        Berry = NumberRange.new(1, 3), 
                        Wheat = NumberRange.new(1, 3), 
                        Cabbage = NumberRange.new(1, 1)
                    }
                }
            }
        }, 
        Health = 50, 
        WalkSpeed = 5, 
        RunSpeed = 10, 
        MaxSlopeAngle = 1.0471975511965976, 
        IsAggressive = false, 
        CuriousDetectionRange = 20, 
        HostileDetectionRange = 50, 
        MinimumAttacks = 2, 
        Damage = 2, 
        RangeDamage = 5, 
        DamageRange = 25, 
        MeleeDamageRange = 4, 
        AttackCooldown = 1.25
    }, 
    Elephant = {
        DroppedLoot = {
            Meat = NumberRange.new(6, 6), 
            Hide = NumberRange.new(3, 3)
        }, 
        Animations = {
            Walk = "rbxassetid://11988621215", 
            Idle = "rbxassetid://11988372218", 
            SwimMove = "rbxassetid://129122447869104"
        }, 
        StateType = "Animal", 
        States = {
            Idle = true, 
            Walk = true, 
            Scared = true, 
            Attracted = true, 
            Tamed = true
        }, 
        Health = 250, 
        WalkSpeed = 3, 
        RunSpeed = 16, 
        MaxSlopeAngle = 0.8726646259971648, 
        WalkAnimSpeed = 5.5, 
        TamedData = {
            TameItemName = "Wheat", 
            TameChance = 0.05, 
            TameBadLuckProtection = 0.25
        }, 
        MountData = {
            ArmorName = "Elephant Armor", 
            MaxSpeed = 22, 
            BackwardsMaxSpeed = 8, 
            Acceleration = 0.5, 
            Deceleration = 2, 
            MaxTurnSpeed = 2.2689280275926285, 
            TurnDeceleration = 17.43583922742335, 
            TurnAcceleration = function(v2)
                return 15.707963267948966 / (1 + 2 * v2);
            end
        }
    }, 
    Horse = {
        DroppedLoot = {
            Meat = NumberRange.new(2, 2), 
            Hide = NumberRange.new(1, 1)
        }, 
        Animations = {
            Walk = "rbxassetid://12559867513", 
            Run = "rbxassetid://12559868872", 
            Idle = "rbxassetid://12559866115", 
            Eat = "rbxassetid://11645667359", 
            SwimMove = "rbxassetid://99406327027565"
        }, 
        StateType = "Animal", 
        States = {
            Idle = true, 
            Walk = true, 
            Eat = true, 
            Scared = true, 
            Attracted = true, 
            Tamed = true
        }, 
        Health = 100, 
        WalkSpeed = 6, 
        RunSpeed = 18, 
        MaxSlopeAngle = 1.0471975511965976, 
        WalkAnimSpeed = 3, 
        RunAnimSpeed = 25, 
        TamedData = {
            TameItemName = "Wheat", 
            TameChance = 0.1, 
            TameBadLuckProtection = 0.25
        }, 
        MountData = {
            ArmorName = "Horse Armor", 
            MaxSpeed = 34, 
            BackwardsMaxSpeed = 10, 
            Acceleration = 2, 
            Deceleration = 2, 
            MaxTurnSpeed = 2.2689280275926285, 
            TurnDeceleration = 17.43583922742335, 
            TurnAcceleration = function(v3)
                return 15.707963267948966 / (1 + 2 * v3);
            end
        }
    }, 
    Lion = {
        DroppedLoot = {
            Meat = NumberRange.new(3, 3), 
            Hide = NumberRange.new(2, 2)
        }, 
        Animations = {
            Walk = "rbxassetid://12559802447", 
            Run = "rbxassetid://12559804385", 
            Attack = {
                "rbxassetid://12559808315"
            }, 
            Idle = "rbxassetid://12559798022"
        }, 
        StateType = "Animal", 
        States = {
            Idle = true, 
            Walk = true, 
            Hostile = true, 
            Attacking = true
        }, 
        Health = 150, 
        WalkSpeed = 6, 
        RunSpeed = 18, 
        MaxSlopeAngle = 1.0471975511965976, 
        IsAggressive = true, 
        HostileDetectionRange = 50, 
        MinimumAttacks = 3, 
        Damage = 15, 
        DamageRange = 2, 
        AttackCooldown = 1.5, 
        AttackSound = "AttackLion"
    }, 
    Marvin = {
        DroppedLoot = {
            Meat = NumberRange.new(25, 25), 
            Hide = NumberRange.new(10, 10)
        }, 
        Animations = {
            Walk = "rbxassetid://8029975650", 
            Idle = "rbxassetid://11988372218", 
            Attack = {
                "rbxassetid://8029950195"
            }
        }, 
        StateType = "Animal", 
        States = {
            Idle = true, 
            Walk = true, 
            Hostile = true, 
            Attacking = true
        }, 
        Health = 5000, 
        WalkSpeed = 6, 
        RunSpeed = 24, 
        MaxSlopeAngle = 1.0471975511965976, 
        HostileDetectionRange = 20, 
        MinimumAttacks = -1, 
        Damage = 15, 
        DamageRange = 2, 
        AttackCooldown = 1.5
    }, 
    Penguin = {
        DroppedLoot = {
            Meat = NumberRange.new(2, 2), 
            Hide = NumberRange.new(1, 1)
        }, 
        Animations = {
            Walk = "rbxassetid://12867980308", 
            Idle = "rbxassetid://12867977746", 
            Run = "rbxassetid://12867980308"
        }, 
        StateType = "Animal", 
        States = {
            Idle = true, 
            Walk = true, 
            Scared = true
        }, 
        Health = 100, 
        WalkSpeed = 6, 
        RunSpeed = 16, 
        MaxSlopeAngle = 1.0471975511965976
    }, 
    Pig = {
        DroppedLoot = {
            Meat = NumberRange.new(3, 3)
        }, 
        Animations = {
            Idle = "rbxassetid://12559884702", 
            Walk = "rbxassetid://12559888117", 
            Run = "rbxassetid://12559886803"
        }, 
        StateType = "Animal", 
        States = {
            Idle = true, 
            Walk = true, 
            Scared = true, 
            Attracted = true, 
            Tamed = true, 
            TamedWalk = true, 
            TamedFollow = true, 
            BreedSearch = true, 
            Breeding = true
        }, 
        Health = 50, 
        WalkSpeed = 6, 
        RunSpeed = 14, 
        MaxSlopeAngle = 1.0471975511965976, 
        TamedData = {
            TameItemName = "Carrot", 
            TameChance = 0.1, 
            TameBadLuckProtection = 0.25, 
            BreedExhaustionTime = 120, 
            ChildGrowupTime = 300
        }
    }, 
    ["Polar Bear"] = {
        DroppedLoot = {
            Meat = NumberRange.new(6, 6), 
            Hide = NumberRange.new(3, 3)
        }, 
        Animations = {
            Walk = "rbxassetid://12559860093", 
            Run = "rbxassetid://12559858822", 
            Idle = "rbxassetid://12559857185", 
            Attack = {
                "rbxassetid://12559861526"
            }
        }, 
        StateType = "Animal", 
        States = {
            Idle = true, 
            Walk = true, 
            Eat = true, 
            Hostile = true, 
            Attacking = true
        }, 
        Health = 200, 
        WalkSpeed = 6, 
        RunSpeed = 20, 
        MaxSlopeAngle = 1.0471975511965976, 
        IsAggressive = true, 
        HostileDetectionRange = 50, 
        MinimumAttacks = 3, 
        Damage = 15, 
        DamageRange = 2, 
        AttackCooldown = 1.5, 
        AttackSound = "AttackBear"
    }, 
    Wolf = {
        DroppedLoot = {
            Meat = NumberRange.new(2, 2), 
            Hide = NumberRange.new(2, 2)
        }, 
        Animations = {
            Walk = "rbxassetid://12559791454", 
            Run = "rbxassetid://12559793998", 
            Idle = "rbxassetid://12569237094", 
            Attack = {
                "rbxassetid://12559783630"
            }
        }, 
        StateType = "Animal", 
        States = {
            Idle = true, 
            Walk = true, 
            Hostile = true, 
            Attacking = true
        }, 
        Health = 100, 
        WalkSpeed = 6, 
        RunSpeed = 20, 
        MaxSlopeAngle = 1.0471975511965976, 
        IsAggressive = true, 
        HostileDetectionRange = 50, 
        MinimumAttacks = 3, 
        Damage = 20, 
        DamageRange = 2, 
        AttackCooldown = 1.5, 
        AttackSound = "AttackWolf"
    }, 
    Shark = {
        DroppedLoot = {
            Meat = NumberRange.new(2, 2)
        }, 
        Animations = {
            Walk = "rbxassetid://12559854107", 
            Idle = "rbxassetid://12559852047", 
            Attack = {
                "rbxassetid://12559850422"
            }
        }, 
        StateType = "Animal", 
        States = {
            Idle = true, 
            Walk = true, 
            Eat = true, 
            Hostile = true, 
            Attacking = true
        }, 
        Health = 150, 
        WalkSpeed = 8, 
        RunSpeed = 18, 
        MaxSlopeAngle = 0, 
        IsAggressive = true, 
        IsAquatic = true, 
        SwimmingPreference = "Surface", 
        HostileDetectionRange = 100, 
        MinimumAttacks = 3, 
        Damage = 5, 
        DamageRange = 3, 
        AttackCooldown = 1.5, 
        AttackSound = "AttackShark"
    }, 
    Carp = {
        DroppedLoot = {
            ["Cooked Fish"] = NumberRange.new(3, 3)
        }, 
        Animations = {}, 
        StateType = "Animal", 
        States = {
            Idle = true, 
            Walk = true, 
            Eat = true, 
            Scared = true
        }, 
        Health = 10, 
        WalkSpeed = 8, 
        RunSpeed = 14, 
        MaxSlopeAngle = 0, 
        IsAggressive = false, 
        IsAquatic = true, 
        SwimmingPreference = "Underwater"
    }, 
    Salmon = {
        DroppedLoot = {
            ["Cooked Fish"] = NumberRange.new(3, 3)
        }, 
        Animations = {}, 
        StateType = "Animal", 
        States = {
            Idle = true, 
            Walk = true, 
            Eat = true, 
            Scared = true
        }, 
        Health = 10, 
        WalkSpeed = 8, 
        RunSpeed = 14, 
        MaxSlopeAngle = 0, 
        IsAggressive = false, 
        IsAquatic = true, 
        SwimmingPreference = "Underwater"
    }, 
    ["Sea Snapper"] = {
        DroppedLoot = {
            ["Cooked Fish"] = NumberRange.new(3, 3)
        }, 
        Animations = {}, 
        StateType = "Animal", 
        States = {
            Idle = true, 
            Walk = true, 
            Eat = true, 
            Scared = true
        }, 
        Health = 10, 
        WalkSpeed = 8, 
        RunSpeed = 14, 
        MaxSlopeAngle = 0, 
        IsAggressive = false, 
        IsAquatic = true, 
        SwimmingPreference = "Underwater"
    }, 
    ["Giant Tuna"] = {
        DroppedLoot = {
            ["Cooked Fish"] = NumberRange.new(3, 3)
        }, 
        Animations = {}, 
        StateType = "Animal", 
        States = {
            Idle = true, 
            Walk = true, 
            Eat = true, 
            Scared = true
        }, 
        Health = 10, 
        WalkSpeed = 8, 
        RunSpeed = 14, 
        MaxSlopeAngle = 0, 
        IsAggressive = false, 
        IsAquatic = true, 
        SwimmingPreference = "Underwater"
    }, 
    Octopus = {
        DroppedLoot = {
            ["Cooked Fish"] = NumberRange.new(3, 3)
        }, 
        Animations = {}, 
        StateType = "Animal", 
        States = {
            Idle = true, 
            Walk = true, 
            Eat = true, 
            Scared = true
        }, 
        Health = 10, 
        WalkSpeed = 8, 
        RunSpeed = 14, 
        MaxSlopeAngle = 0, 
        IsAggressive = false, 
        IsAquatic = true, 
        SwimmingPreference = "Underwater"
    }, 
    Squid = {
        DroppedLoot = {
            ["Cooked Fish"] = NumberRange.new(3, 3)
        }, 
        Animations = {}, 
        StateType = "Animal", 
        States = {
            Idle = true, 
            Walk = true, 
            Eat = true, 
            Scared = true
        }, 
        Health = 10, 
        WalkSpeed = 8, 
        RunSpeed = 14, 
        MaxSlopeAngle = 0, 
        IsAggressive = false, 
        IsAquatic = true, 
        SwimmingPreference = "Underwater"
    }, 
    Shrimp = {
        DroppedLoot = {
            ["Cooked Fish"] = NumberRange.new(3, 3)
        }, 
        Animations = {}, 
        StateType = "Animal", 
        States = {
            Idle = true, 
            Walk = true, 
            Eat = true, 
            Scared = true
        }, 
        Health = 10, 
        WalkSpeed = 8, 
        RunSpeed = 14, 
        MaxSlopeAngle = 0, 
        IsAggressive = false, 
        IsAquatic = true, 
        SwimmingPreference = "Underwater"
    }, 
    Lobster = {
        DroppedLoot = {
            ["Cooked Fish"] = NumberRange.new(3, 3)
        }, 
        Animations = {}, 
        StateType = "Animal", 
        States = {
            Idle = true, 
            Walk = true, 
            Eat = true, 
            Scared = true
        }, 
        Health = 10, 
        WalkSpeed = 8, 
        RunSpeed = 14, 
        MaxSlopeAngle = 0, 
        IsAggressive = false, 
        IsAquatic = true, 
        SwimmingPreference = "Underwater"
    }, 
    Mussel = {
        DroppedLoot = {
            Meat = NumberRange.new(3, 3)
        }, 
        Animations = {}, 
        StateType = "Animal", 
        States = {
            Idle = true, 
            Walk = true, 
            Eat = true, 
            Scared = true
        }, 
        Health = 10, 
        WalkSpeed = 8, 
        RunSpeed = 14, 
        MaxSlopeAngle = 0, 
        IsAggressive = false, 
        IsAquatic = true, 
        SwimmingPreference = "Underwater"
    }, 
    Whale = {
        DroppedLoot = {
            Meat = NumberRange.new(4, 4)
        }, 
        Animations = {}, 
        StateType = "Animal", 
        States = {
            Idle = true, 
            Walk = true, 
            Eat = true, 
            Scared = true
        }, 
        Health = 250, 
        WalkSpeed = 8, 
        RunSpeed = 14, 
        MaxSlopeAngle = 0, 
        IsAggressive = false, 
        IsAquatic = true, 
        SwimmingPreference = "Underwater"
    }, 
    ["The Titan"] = {
        DroppedLoot = {
            Obsidian = NumberRange.new(3, 3)
        }, 
        Animations = {
            Walk = "rbxassetid://656121766", 
            Run = "rbxassetid://656118852", 
            Idle = "rbxassetid://13395765442", 
            Attack = {
                "rbxassetid://13395666453", 
                "rbxassetid://13395700176", 
                "rbxassetid://13395964441"
            }, 
            SpecialAttack = {
                "rbxassetid://13395897555", 
                "rbxassetid://13395912733"
            }
        }, 
        AnimationSpeedModifier = {
            Attack = 2, 
            SpecialAttack = {
                2, 
                1
            }
        }, 
        StateType = "Boss", 
        States = {
            Idle = true, 
            TeleportToSpawn = true, 
            Hostile = true, 
            Attacking = true, 
            Stomp = true, 
            Rage = true
        }, 
        NeverSpawnInPrivateServers = true, 
        AlwaysShowName = true, 
        AlwaysFloorYUp = true, 
        Health = 10000, 
        WalkSpeed = 0, 
        RunSpeed = 18, 
        MaxSlopeAngle = 1.0471975511965976, 
        IsAggressive = true, 
        HostileDetectionRange = 62, 
        Damage = 10, 
        DamageRange = 2, 
        AttackCooldown = 2, 
        ShieldPiercing = true, 
        ArmorPiercing = true, 
        AdditionalInfo = {
            GoToRageTimer = NumberRange.new(14, 28), 
            GoToStompTimer = NumberRange.new(14, 28), 
            StompInvincibilityDuration = 8, 
            RageDuration = 12, 
            RageDamageBoost = 10, 
            DamageSphereDamage = 20, 
            TeleportWhenTooFarDistance = 260
        }
    }, 
    Guardian = {
        DroppedLoot = {}, 
        Animations = {
            Walk = "rbxassetid://16631254568", 
            Run = "rbxassetid://16631254568", 
            Idle = "rbxassetid://16631601387", 
            Attack = {
                "rbxassetid://16631451323", 
                "rbxassetid://16631500068", 
                "rbxassetid://16631540345"
            }
        }, 
        AnimationSpeedModifier = {
            Attack = 2.2
        }, 
        StateType = "Boss", 
        States = {
            Idle = true, 
            TeleportToSpawn = true, 
            Hostile = true, 
            Attacking = true
        }, 
        NeverSpawnInPrivateServers = true, 
        AlwaysShowName = true, 
        AlwaysFloorYUp = true, 
        Health = 400, 
        WalkSpeed = 0, 
        RunSpeed = 20, 
        MaxSlopeAngle = 1.0471975511965976, 
        IsAggressive = true, 
        HostileDetectionRange = 62, 
        Damage = 10, 
        DamageRange = 2, 
        AttackCooldown = 2, 
        AdditionalInfo = {
            TeleportWhenTooFarDistance = 180
        }
    }, 
    Farmer = {
        DroppedLoot = {}, 
        Animations = {
            Idle = "rbxassetid://17191710895", 
            Walk = "rbxassetid://17191896030", 
            Run = "rbxassetid://17215080342", 
            Work = "rbxassetid://17257699322"
        }, 
        StateType = "Helper", 
        States = {
            Idle = true, 
            Walk = true, 
            Scared = true, 
            Work = true
        }, 
        NeverSpawnInPrivateServers = false, 
        AlwaysShowName = true, 
        AlwaysFloorYUp = true, 
        Health = 100, 
        WalkSpeed = 9, 
        RunSpeed = 18, 
        MaxSlopeAngle = 1.0471975511965976, 
        DeathEvent = function()

        end
    }, 
    Butcher = {
        DroppedLoot = {}, 
        Animations = {
            Idle = "rbxassetid://17191710895", 
            Walk = "rbxassetid://17191896030", 
            Run = "rbxassetid://17215080342", 
            Work = "rbxassetid://17250134493"
        }, 
        StateType = "Helper", 
        States = {
            Idle = true, 
            Walk = true, 
            Scared = true, 
            Work = true
        }, 
        NeverSpawnInPrivateServers = false, 
        AlwaysShowName = true, 
        AlwaysFloorYUp = true, 
        Health = 100, 
        WalkSpeed = 9, 
        RunSpeed = 18, 
        MaxSlopeAngle = 1.0471975511965976, 
        DeathEvent = function()

        end
    }, 
    Miner = {
        DroppedLoot = {}, 
        Animations = {
            Idle = "rbxassetid://17191710895", 
            Walk = "rbxassetid://17191896030", 
            Run = "rbxassetid://17215080342", 
            Work = "rbxassetid://17227372116"
        }, 
        StateType = "Helper", 
        States = {
            Idle = true, 
            Walk = true, 
            Scared = true, 
            Work = true
        }, 
        NeverSpawnInPrivateServers = false, 
        AlwaysShowName = true, 
        AlwaysFloorYUp = true, 
        Health = 100, 
        WalkSpeed = 9, 
        RunSpeed = 18, 
        MaxSlopeAngle = 1.0471975511965976, 
        DeathEvent = function()

        end
    }, 
    Woodcutter = {
        DroppedLoot = {}, 
        Animations = {
            Idle = "rbxassetid://17191710895", 
            Walk = "rbxassetid://17191896030", 
            Run = "rbxassetid://17215080342", 
            Work = "rbxassetid://17250116748"
        }, 
        StateType = "Helper", 
        States = {
            Idle = true, 
            Walk = true, 
            Scared = true, 
            Work = true
        }, 
        NeverSpawnInPrivateServers = false, 
        AlwaysShowName = true, 
        AlwaysFloorYUp = true, 
        Health = 100, 
        WalkSpeed = 9, 
        RunSpeed = 18, 
        MaxSlopeAngle = 1.0471975511965976, 
        DeathEvent = function()

        end
    }, 
    ["Bronze Swordsman"] = {
        DroppedLoot = {}, 
        Animations = {
            Idle = "rbxassetid://17191710895", 
            Walk = "rbxassetid://17191896030", 
            Run = "rbxassetid://17215080342", 
            SwingSword = "rbxassetid://17121047187"
        }, 
        StateType = "Helper", 
        States = {
            Idle = true, 
            Walk = true, 
            Chasing = true, 
            Attacking = true
        }, 
        NeverSpawnInPrivateServers = false, 
        AlwaysShowName = true, 
        AlwaysFloorYUp = true, 
        Health = 132, 
        WalkSpeed = 15, 
        RunSpeed = 18, 
        MaxSlopeAngle = 1.0471975511965976, 
        HostileDetectionRange = 100, 
        Damage = 30, 
        AttackCooldown = 1.5, 
        AttackSound = nil, 
        DeathEvent = function()

        end
    }, 
    ["Iron Swordsman"] = {
        DroppedLoot = {}, 
        Animations = {
            Idle = "rbxassetid://17191710895", 
            Walk = "rbxassetid://17191896030", 
            Run = "rbxassetid://17215080342", 
            SwingSword = "rbxassetid://17121047187"
        }, 
        StateType = "Helper", 
        States = {
            Idle = true, 
            Walk = true, 
            Chasing = true, 
            Attacking = true
        }, 
        NeverSpawnInPrivateServers = false, 
        AlwaysShowName = true, 
        AlwaysFloorYUp = true, 
        Health = 140, 
        WalkSpeed = 15, 
        RunSpeed = 18, 
        MaxSlopeAngle = 1.0471975511965976, 
        HostileDetectionRange = 100, 
        Damage = 40, 
        AttackCooldown = 1.5, 
        AttackSound = nil, 
        DeathEvent = function()

        end
    }, 
    ["Steel Swordsman"] = {
        DroppedLoot = {}, 
        Animations = {
            Idle = "rbxassetid://17191710895", 
            Walk = "rbxassetid://17191896030", 
            Run = "rbxassetid://17215080342", 
            SwingSword = "rbxassetid://17121047187"
        }, 
        StateType = "Helper", 
        States = {
            Idle = true, 
            Walk = true, 
            Chasing = true, 
            Attacking = true
        }, 
        NeverSpawnInPrivateServers = false, 
        AlwaysShowName = true, 
        AlwaysFloorYUp = true, 
        Health = 148, 
        WalkSpeed = 15, 
        RunSpeed = 18, 
        MaxSlopeAngle = 1.0471975511965976, 
        HostileDetectionRange = 100, 
        Damage = 50, 
        AttackCooldown = 1.5, 
        AttackSound = nil, 
        DeathEvent = function()

        end
    }, 
    ["Bluesteel Swordsman"] = {
        DroppedLoot = {}, 
        Animations = {
            Idle = "rbxassetid://17191710895", 
            Walk = "rbxassetid://17191896030", 
            Run = "rbxassetid://17215080342", 
            SwingSword = "rbxassetid://17121047187"
        }, 
        States = {
            Idle = true, 
            Walk = true, 
            Chasing = true, 
            Attacking = true
        }, 
        NeverSpawnInPrivateServers = false, 
        AlwaysShowName = true, 
        AlwaysFloorYUp = true, 
        Health = 156, 
        WalkSpeed = 15, 
        RunSpeed = 18, 
        MaxSlopeAngle = 1.0471975511965976, 
        HostileDetectionRange = 100, 
        Damage = 60, 
        AttackCooldown = 1.5, 
        AttackSound = nil, 
        DeathEvent = function()

        end
    }, 
    ["Darksteel Swordsman"] = {
        DroppedLoot = {}, 
        Animations = {
            Idle = "rbxassetid://17191710895", 
            Walk = "rbxassetid://17191896030", 
            Run = "rbxassetid://17215080342", 
            SwingSword = "rbxassetid://17121047187"
        }, 
        StateType = "Helper", 
        States = {
            Idle = true, 
            Walk = true, 
            Chasing = true, 
            Attacking = true
        }, 
        NeverSpawnInPrivateServers = false, 
        AlwaysShowName = true, 
        AlwaysFloorYUp = true, 
        Health = 164, 
        WalkSpeed = 15, 
        RunSpeed = 18, 
        MaxSlopeAngle = 1.0471975511965976, 
        HostileDetectionRange = 100, 
        Damage = 70, 
        AttackCooldown = 1.5, 
        AttackSound = nil, 
        DeathEvent = function()

        end
    }, 
    ["Bronze Archer"] = {
        DroppedLoot = {}, 
        Animations = {
            Idle = "rbxassetid://17191710895", 
            Walk = "rbxassetid://17191896030", 
            Run = "rbxassetid://17215080342", 
            ShootArrows = "rbxassetid://17085024341"
        }, 
        StateType = "Helper", 
        States = {
            Idle = true, 
            ShootArrows = true
        }, 
        NeverSpawnInPrivateServers = false, 
        AlwaysShowName = true, 
        AlwaysFloorYUp = true, 
        Health = 132, 
        WalkSpeed = 0, 
        RunSpeed = 0, 
        MaxSlopeAngle = 1.0471975511965976, 
        HostileDetectionRange = 100, 
        Damage = 10, 
        AttackCooldown = 1, 
        AttackSound = nil, 
        MissChance = 15, 
        DeathEvent = function()

        end
    }, 
    ["Iron Archer"] = {
        DroppedLoot = {}, 
        Animations = {
            Idle = "rbxassetid://17191710895", 
            Walk = "rbxassetid://17191896030", 
            Run = "rbxassetid://17215080342", 
            ShootArrows = "rbxassetid://17085024341"
        }, 
        StateType = "Helper", 
        States = {
            Idle = true, 
            ShootArrows = true
        }, 
        NeverSpawnInPrivateServers = false, 
        AlwaysShowName = true, 
        AlwaysFloorYUp = true, 
        Health = 140, 
        WalkSpeed = 0, 
        RunSpeed = 0, 
        MaxSlopeAngle = 1.0471975511965976, 
        HostileDetectionRange = 100, 
        Damage = 15, 
        AttackCooldown = 0.9, 
        AttackSound = nil, 
        MissChance = 13, 
        DeathEvent = function()

        end
    }, 
    ["Steel Archer"] = {
        DroppedLoot = {}, 
        Animations = {
            Idle = "rbxassetid://17191710895", 
            Walk = "rbxassetid://17191896030", 
            Run = "rbxassetid://17215080342", 
            ShootArrows = "rbxassetid://17085024341"
        }, 
        StateType = "Helper", 
        States = {
            Idle = true, 
            ShootArrows = true
        }, 
        NeverSpawnInPrivateServers = false, 
        AlwaysShowName = true, 
        AlwaysFloorYUp = true, 
        Health = 148, 
        WalkSpeed = 0, 
        RunSpeed = 0, 
        MaxSlopeAngle = 1.0471975511965976, 
        HostileDetectionRange = 100, 
        Damage = 20, 
        AttackCooldown = 0.8, 
        AttackSound = nil, 
        MissChance = 11, 
        DeathEvent = function()

        end
    }, 
    ["Bluesteel Archer"] = {
        DroppedLoot = {}, 
        Animations = {
            Idle = "rbxassetid://17191710895", 
            Walk = "rbxassetid://17191896030", 
            Run = "rbxassetid://17215080342", 
            ShootArrows = "rbxassetid://17085024341"
        }, 
        StateType = "Helper", 
        States = {
            Idle = true, 
            ShootArrows = true
        }, 
        NeverSpawnInPrivateServers = false, 
        AlwaysShowName = true, 
        AlwaysFloorYUp = true, 
        Health = 156, 
        WalkSpeed = 0, 
        RunSpeed = 0, 
        MaxSlopeAngle = 1.0471975511965976, 
        HostileDetectionRange = 100, 
        Damage = 22, 
        AttackCooldown = 0.7, 
        AttackSound = nil, 
        MissChance = 9, 
        DeathEvent = function()

        end
    }, 
    ["Darksteel Archer"] = {
        DroppedLoot = {}, 
        Animations = {
            Idle = "rbxassetid://17191710895", 
            Walk = "rbxassetid://17191896030", 
            Run = "rbxassetid://17215080342", 
            ShootArrows = "rbxassetid://17085024341"
        }, 
        StateType = "Helper", 
        States = {
            Idle = true, 
            ShootArrows = true
        }, 
        NeverSpawnInPrivateServers = false, 
        AlwaysShowName = true, 
        AlwaysFloorYUp = true, 
        Health = 164, 
        WalkSpeed = 0, 
        RunSpeed = 0, 
        MaxSlopeAngle = 1.0471975511965976, 
        HostileDetectionRange = 100, 
        Damage = 25, 
        AttackCooldown = 0.6, 
        AttackSound = nil, 
        MissChance = 7, 
        DeathEvent = function()

        end
    }, 
    Jester = {
        DroppedLoot = {}, 
        Animations = {
            Idle = "rbxassetid://17191710895", 
            Walk = "rbxassetid://17191896030", 
            Run = "rbxassetid://16992465828", 
            Work = "rbxassetid://17268390947"
        }, 
        StateType = "Helper", 
        States = {
            Idle = true, 
            Walk = true, 
            Scared = true, 
            Work = true
        }, 
        NeverSpawnInPrivateServers = false, 
        AlwaysShowName = true, 
        AlwaysFloorYUp = true, 
        Health = 100, 
        WalkSpeed = 9, 
        RunSpeed = 18, 
        MaxSlopeAngle = 1.0471975511965976, 
        DeathEvent = function()

        end
    }
};

return v13
