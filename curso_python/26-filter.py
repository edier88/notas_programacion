# Filter

numbers = [1,2,3,4,5]

numbers2 = list(filter(lambda x: x % 2 == 0, numbers))
print(numbers2)


# Con diccionarios:

matches = [
    {
        'teamA': 'Bolivia',
        'teamB': 'Uruguay',
        'scoreTeamA': 1,
        'scoreTeamB': 2,
        'home_team_result': 'loser'
    },
    {
        'teamA': 'Chibchombia',
        'teamB': 'Argentina',
        'scoreTeamA': 1,
        'scoreTeamB': 2,
        'home_team_result': 'loser'
    }
]

print(matches)
print(len(matches))

newList = list(filter(lambda item: item['home_team_result'] == 'loser', matches))

print(newList)
print(len(newList))
