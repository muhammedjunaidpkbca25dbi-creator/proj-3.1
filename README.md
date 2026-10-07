## Project: IPL Cricket Analytics

Analyze IPL match and ball-by-ball data to identify cricket performance insights, validate findings, and communicate them through data analysis and dashboards.

## Business Question


**Does winning the toss help a team win an IPL match?**

This project investigates whether there is a relationship between the outcome of the toss and the final match result. The analysis will examine toss results, toss decisions, and match outcomes to determine whether teams that win the toss have a higher chance of winning the match.

The analysis will also consider related factors such as:

- Toss winner vs. match winner
- Batting first vs. chasing
- Toss decision and match outcome
- Team and venue differences

The goal is not only to calculate a percentage, but to determine whether the observed pattern is reliable and useful for making cricket-related decisions. The findings will be validated before being presented in the final dashboard and report.

## Dataset

The project contains five main tables:

matches – Match-level information
deliveries – Ball-by-ball information
players – Player information
teams – Team information
venues – Venue information

The deliveries table is mainly used for analysing batting, bowling, runs, wickets, extras, and match phases.

## Data Preparation

Data preparation fixes the problems identified during data profiling and creates a clean dataset for analysis.

### What was done

- Converted blank values into proper `NULL` values.
- Standardized inconsistent categories and names.
- Cleaned venue names.
- Removed duplicate venue records.
- Filled missing city values where possible.
- Converted season information into a usable year.
- Defined which matches should be treated as wins.
- Combined the cleaning rules to create `matches_clean`.

The cleaning rules were written in separate SQL files and executed in order.

### Output

A cleaned table called:

`matches_clean`

The raw tables were not modified.

---

## Data Analysis

Data analysis uses the cleaned data to answer cricket-related business questions and find useful patterns.

### Analysis Views

Three main views were created:

- `v_ball` – one row per ball
- `v_innings` – one row per team innings
- `v_match_totals` – one row per completed match

These views make it easier to analyze different levels of IPL data.

### Areas Analyzed

- Batting
- Batting roles
- Innings phases
- Bowling
- Pace vs Spin
- Bowling specialists
- Toss
- Batting first vs Chasing
- Venues
- Teams
- Wickets and dismissals
- Seasons
- Player scouting

### Analysis Process

Each analysis follows a simple process:

**Question → SQL Query → Result → Interpretation → Finding**

Minimum sample requirements are used where necessary to avoid misleading results from very small samples.

### Output

- SQL analysis queries
- Numerical results
- Charts
- Analysis findings and conclusions

The analysis is performed using the cleaned data rather than the original raw tables.

---

## Project Workflow

```text
Raw IPL Data
     ↓
Data Profiling
     ↓
Data Quality Log
     ↓
Data Preparation
     ↓
Cleaned Data
     ↓
Data Analysis
     ↓
Findings & Insights


