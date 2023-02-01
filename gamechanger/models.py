from django.db import models

# Create your models here.
class Sport(models.Model):
    SportID = models.BigIntegerField(db_index=True)
    SportName = models.CharField(max_length=100)

class Country(models.Model):
    CountryID = models.BigIntegerField(db_index=True)
    CountryName = models.CharField(max_length=100)
    Sports = models.ManyToManyField(Sport, through='SportCountry')

class LeagueType(models.Model):
    LeagueTypeID = models.BigIntegerField(db_index=True)
    Name = models.CharField(max_length=100)

class League(models.Model):
    LeagueID = models.BigIntegerField(db_index=True)    
    LeagueName = models.CharField(max_length=100)
    LeagueTypeID = models.ForeignKey(LeagueType, on_delete=models.CASCADE)
    SportID = models.ForeignKey(Sport, on_delete=models.CASCADE)

class Team(models.Model):
    TeamID = models.BigIntegerField(db_index=True)
    TeamName = models.CharField(max_length=100)
    SportID = models.ForeignKey(Sport, on_delete=models.CASCADE)
    LeagueID = models.ForeignKey(League, on_delete=models.CASCADE)

class Coach(models.Model):
    CoachID = models.BigIntegerField(db_index=True)
    CoachName = models.CharField(max_length=50)
    Teams = models.ManyToManyField(Team, through='CoachTeam')

class Player(models.Model):
    PlayerID = models.BigIntegerField(db_index=True)
    PlayerName = models.CharField(max_length=100)

class Season(models.Model):
    SeasonName = models.CharField(max_length=100)
    SeasonID = models.BigIntegerField(db_index=True)
    SeasonBegin = models.DateField()
    SeasonEnd = models.DateField()

class Venue(models.Model):
    VenueID = models.BigIntegerField(db_index=True)
    VenueName = models.CharField(max_length=100)
    VenueLat = models.DecimalField(max_digits=11, decimal_places=8)
    VenueLon = models.DecimalField(max_digits=11, decimal_places=8)    

class Game(models.Model):
    GameID = models.BigIntegerField(db_index=True)
    GameTeamID_2 = models.ForeignKey(Team, related_name="TeamID_2", on_delete=models.CASCADE)
    GameTeamID_1 = models.ForeignKey(Team, related_name="TeamID_1", on_delete=models.CASCADE)
    VenueID = models.ForeignKey(Venue, on_delete=models.CASCADE)
    SeasonID = models.ForeignKey(Season, on_delete=models.CASCADE)
    GameName = models.CharField(max_length=100)
    GameTime = models.DateField()
    GameTeamType = models.PositiveSmallIntegerField()

class StatsType(models.Model):
    StatsTypeID = models.BigIntegerField(db_index=True)
    SportID = models.ForeignKey(Sport, on_delete=models.CASCADE)
    StatsTypeName = models.CharField(max_length=100)

class CoachTeam(models.Model):
    CoachTeamID = models.BigIntegerField(db_index=True)
    CoachID = models.ForeignKey(Coach, on_delete=models.CASCADE)
    TeamID = models.ForeignKey(Team, on_delete=models.CASCADE)

class SportCountry(models.Model):
    SportCountryID = models.BigIntegerField(db_index=True)
    SportID = models.ForeignKey(Sport, on_delete=models.CASCADE)
    CountryID = models.ForeignKey(Country, on_delete=models.CASCADE)

class PlayerGame(models.Model):
    PlayerGameID = models.BigIntegerField(db_index=True)
    PlayerID = models.ForeignKey(Player, on_delete=models.CASCADE)
    GameID = models.ForeignKey(Game, on_delete=models.CASCADE)

class PlayerGameStats(models.Model):
    PlayerGameStatsID = models.BigIntegerField(db_index=True)
    PlayerGameID = models.ForeignKey(PlayerGame, on_delete=models.CASCADE)
    StatsTypeID = models.ForeignKey(StatsType, on_delete=models.CASCADE)
    PlayerGameStatsEvent = models.DateField()
    StatsQuantity = models.DecimalField(max_digits=11, decimal_places=8)

class PlayerTeam(models.Model):
    PlayerTeamID = models.BigIntegerField(db_index=True)
    PlayerID = models.ForeignKey(Player, on_delete=models.CASCADE)
    TeamID = models.ForeignKey(Team, on_delete=models.CASCADE)
    StartPosition = models.SmallIntegerField
