-- Gujarat Lions and Gujarat Titans are DIFFERENT teams.
-- We do not merge them. Do not change this.

DROP VIEW IF EXISTS v_deliveries_typed;  -- so a second run works
CREATE VIEW v_deliveries_typed AS       -- name the rule
SELECT *,                                -- every column so far
       CASE WHEN bowler_type_clean =
                    'Right_arm Fast Medium' -- the old value
            THEN 'Right arm Fast Medium'    -- the new value
            ELSE bowler_type_clean          -- everything else
       END AS bowler_style                  -- close it and name it
FROM v_deliveries_clean;                    -- built on Fix 1

DROP VIEW IF EXISTS v_teams_clean;
CREATE VIEW v_teams_clean AS
SELECT *,
       CASE WHEN team_name = 'Rising Pune Supergiants'
            THEN 'Rising Pune Supergiant'
            ELSE team_name
       END AS team_name_clean
FROM teams;