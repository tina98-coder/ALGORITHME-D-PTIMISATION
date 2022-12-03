# ALGORITHME-D-PTIMISATION
EXO1:Dans cette exercice on a calculé les composantes 2-connexe et composante 2-arêtes-connexe d’un graphe.Pour cela on a utiliser les fonctions parcours_profondeur(g,s) Visiter_PP(g,u) qui permet de faire un
parcours en profondeur d’un graph G donné en entré avec un sommet de départ S, et retourne en
sortie l’arbre de parcours en profondeur et les identifiant de l’ordre des choix de sommet dans le
parcours profondeur (DFI).
La fonction Chain (g,s) permet de retourner les cycles( et/ou chemins) exister dans le graph g donner
en entré.
La fonction programme(g,s) permet de tester si g contient une arête non visiter il retourne « graph
non 2-arêtes-connexe », si il y a un cycle dans la décomposition en cycle C différent de la première
chaine trouver C1 elle retourne « graph non 2-arêtes-connexe mais pas 2-connexe», si non elle
retourne « graph 2 -connexe ».


EXO2:Trouvez une orientation en un graphe fortement connexe ou trouver une arête déconnectant 
Pour passer vers un graphe fortement connexe, on doit assure que il existe un chemin entre chaque
paire de sommet, pour cela on a crée la fonction fortement_Connexe(g) qui prend en entrée un
graphe et qui va retourner en sortie un graphe orienté fortement connexe, cette fonction permet de
crée un arc entre deux paire de sommet et un arc dans le sens inverse (par exemple elle crée un arc
(x,y) et un arc (y,x)), pour assurer que il existe un chemin entre toute paire de sommet de G.





EXO3:
Montrez qu’un graphe est fortement connexe si et seulement si chaque arc est présent dans au
moins un circuit de G. Première implication : G fortement connexe implique chaque arc est present dans au moin un
circuit :
Supposons que on a G un graphe est fortement connexe donc G est connexe. On a (u,v) un
arc de G et comme G est fortement connexe donc il existe un chemin P de v a u , Si on rajoute
a ce chemin P l’arc (u,v) a la fin, on aura un cycle
Deuxième Implication : chaque arc est présent dans au moins un circuit implique G fortement
connexe :
Supposons que on a un graph G connexe et chaque arc est dans au moins un circuit, soit deux
sommet u et v, soit P le chemin existant entre u et v, on suppose que il existe dans P un arc
(x,y) dans le sens inverse ( dans le sens de y a x), et comme tout arc de G présent dans un
ciruit donc (x,y) appartient a un circuit donc il existe un chemin P2 de y vers x, on remplace
« (x,y) dans le sens inverse » dans P par le chemin de y vers x et on fait la même chose pour
tous les arcs qui sont dans le mauvais sens on obtient un chemin de v vers u, donc G fortement
connexe




EXO4:Prouvez ou infirmez l’affirmation suivante : Un graphe est fortement connexe si et seulement si son
graphe sous-jacent est 2-arête connexe.
Première implication : Un graphe est fortement connexe implique son graphe sous-jacent est 2-
arête connexe :
Supposons que G est un graph fortement connexe, donc son graph sous-jacent est connexe, il existe
des chemins entre ses sommets, donc il n’admet pas d’arête déconnectant donc il est deux arêtes
connexes.
Deuxième Implication :
Supposons qu’on a un graphe G1 un graphe sous-jacent de G a 2-arête-connexe On remarque que le graphe G n’est pas fortement connexe car il existe par des chemin entre tous les
sommets de G.
Donc « Un graphe est fortement connexe si et seulement si son graphe sous-jacent est 2-arête
connexe » n’est pas juste.















# OPTIMIZATION-ALGORITHM
EXO1: In this exercise we have calculated the 2-connected components and the 2-edge-connected component of a graph.
depth traversal of a graph G given as input with a starting vertex S, and returns to
output the depth-first traversal tree and the identifiers of the order of vertex choices in the
depth course (DFI).
The function Chain (g,s) allows to return the cycles (and/or paths) existing in the graph g give
in entered.
The program(g,s) function is used to test if g contains a non-visiting edge, it returns “graph
not 2-edge-connected”, if there is a cycle in the cycle decomposition C different from the first
string find C1 it returns “graph not 2-edge-connected but not 2-connected”, if not it
returns “graph 2 -connected”.


EXO2:Find an orientation in a strongly connected graph or find a disconnecting edge
To pass to a strongly connected graph, we must ensure that there is a path between each
pair of vertices, for this we created the function strongly_Connected(g) which takes as input a
graph and which will return as output a strongly connected directed graph, this function is used to
creates an arc between two pairs of vertices and an arc in the opposite direction (for example it creates an arc
(x,y) and an arc (y,x)), to ensure that there is a path between any pair of vertices of G.





EXO3:
Show that a graph is strongly connected if and only if each edge is present in at
least one circuit of G. First implication: G strongly connected implies each arc is present in at least one
track:
Suppose that we have G a graph is strongly connected so G is connected. We have (u,v) a
arc of G and as G is strongly connected therefore there exists a path P of v a u , If we add
at this path P the arc (u,v) at the end, we will have a cycle
Second Implication: each arc is present in at least one circuit strongly implies G
related:
Suppose we have a connected graph G and each arc is in at least one circuit, i.e. two
vertex u and v, let P be the path existing between u and v, it is assumed that there exists in P an arc
(x,y) in the opposite direction (in the direction of y has x), and like any arc of G present in a
circuit therefore (x,y) belongs to a circuit therefore there is a path P2 from y to x, we replace
“(x,y) in the opposite direction” in P by the path from y to x and we do the same for
all arcs that are in the wrong direction we get a path from v to u, so G strongly
related




EXO4:Prove or disprove the following statement: A graph is strongly connected if and only if its
underlying graph is 2-edge connected.
First implication: A graph is strongly connected implies its underlying graph is 2-
connected edge:
Suppose G is a strongly connected graph, so its underlying graph is connected, there exists
paths between its vertices, so it does not admit a disconnecting edge so there are two edges
related.
Second Implication:
Suppose we have a graph G1 an underlying graph of G has 2-edge-connected We notice that the graph G is not strongly connected because it exists by paths between all the
vertices of G.
So “A graph is strongly connected if and only if its underlying graph is 2-edge
related” is not fair.
