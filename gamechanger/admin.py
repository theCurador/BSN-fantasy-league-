from django.contrib import admin
from .models import Sport,Country,LeagueType,League,Team,Coach,Player,Season,Venue,Game,StatsType,CoachTeam,SportCountry,PlayerGame,PlayerGameStats,PlayerTeam
# Register your models here.
admin.site.register(Sport)
admin.site.register(Country)
admin.site.register(LeagueType)
admin.site.register(League)
admin.site.register(Team)
admin.site.register(Coach)
admin.site.register(Player)
admin.site.register(Season)
admin.site.register(Venue)
admin.site.register(Game)
admin.site.register(StatsType)
admin.site.register(CoachTeam)
admin.site.register(SportCountry)
admin.site.register(PlayerGame)
admin.site.register(PlayerGameStats)
admin.site.register(PlayerTeam)