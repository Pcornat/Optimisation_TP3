#include <stdio.h>
#include <stdlib.h>

#include "algo_parcours.h"
#include "arete.h"
#include "graphe.h"

/**
 * arguments : nom_texte sommet_origine
 */
int main(int argc, char *argv[])
{
	int sommetOrigine;
	graphe_t *graphe = NULL;
	sommet_t *tabSommets = NULL;
	if (argc != 3)
	{
		fprintf(stderr, "Erreur, 3 arguments requis.\n");
		exit(EXIT_FAILURE);
	}
	sommetOrigine = atoi(argv[2]);
	graphe = creerGraphe(argv[1]);
	tabSommets = bellman_ford(graphe, sommetOrigine);
	afficherBellman_ford(graphe, &tabSommets);
	detruireGraphe(graphe);
	return EXIT_SUCCESS;
}
