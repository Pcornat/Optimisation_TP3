cmake_minimum_required(VERSION 3.10)
project(TP3 C)

set(CMAKE_C_STANDARD 99)

include_directories(.)

add_executable(TP3
		algo_parcours.c
		algo_parcours.h
		arete.c
		arete.h
		cellEnsemble.c
		cellEnsemble.h
		cellule_adjacence.c
		cellule_adjacence.h
		celluleIncidence.c
		celluleIncidence.h
		ensemble.c
		ensemble.h
		file.c
		file.h
		filePrioriteMin.c
		filePrioriteMin.h
		graphe.c
		graphe.h
		liste_adjacence.c
		liste_adjacence.h
		listeIncidence.c
		listeIncidence.h
		main.c
		outilsGraphe.c
		outilsGraphe.h
		outilsListe.c
		outilsListe.h
		tas.c
		tas.h
		tri.c
		tri.h
		util.c
		util.h)
