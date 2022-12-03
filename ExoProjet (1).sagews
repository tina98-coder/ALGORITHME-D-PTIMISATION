︠3156171c-8aa2-4b35-83c2-45d6ef93d267s︠
g=Graph(9)
g.add_edges([[0,1],[1,2],[2,3],[2,4],[4,5],[5,6],[4,7],[7,8],[8,9],[7,9],[4,6],[1,4],[0,2],[0,3]])
g.show()


#EXERCICE01


f=[]
dat=0
d=[]
P=[]
Couleur=[]
ART=[]
DFI=[]
j=1
def parcours_profondeur(g,s):
    for v in g.vertices():
        Couleur.append("Blanc")
        d.append(0)
        f.append(0)
    for v in g.vertices():
        if(Couleur[v] == "Blanc"):
            Visiter_PP(g,v)


    return ART,DFI

def Visiter_PP(g,u):
    global P
    global dat
    Couleur[u]="Gris"
    global j
    dat=dat+1
    d[u]=dat
    DFI.append((u))
    for i in g.edges():
        x=i[0]
        y=i[1]
        if (x==u) and (Couleur[y] == "Blanc"):
            P.append(x)
            ART.append(i)
            j=j+1
            Visiter_PP(g,y)
    Couleur[u]="Noir"
    dat=dat+1
    f[u]=dat
parcours_profondeur(g,0)
︡e006b3cd-ce34-4a58-965b-5ac7b465def9︡{"file":{"filename":"/home/user/.sage/temp/project-079e2560-d2d7-4337-bc21-5c8022bfce16/453/tmp_4_7z1zra.svg","show":true,"text":null,"uuid":"2d863943-11fd-47e5-a104-93546fc7e243"},"once":false}︡{"stdout":"([(0, 1, None), (1, 2, None), (2, 3, None), (2, 4, None), (4, 5, None), (5, 6, None), (4, 7, None), (7, 8, None), (8, 9, None)], [0, 1, 2, 3, 4, 5, 6, 7, 8, 9])\n"}︡{"done":true}
︠4a5c81fa-37b5-40b0-8e89-28233059dc97s︠

def Chain(g,s):
    Couleur=[]
    L, L1=parcours_profondeur(g,s)#on recupere dans L l'arbre du parcours en profondeur et dans L1 les somment pris dans l'odre croissant des DFI
    g1 = DiGraph()

    for i in L:#les arêtes de l'arbre (c'est-à-dire les arêtes dans T) sont orientées vers r
        #print("Je suis dans L ",i)
        g1.add_edges([[i[1],i[0]]])

    for i in g.edges():
        if i not in L: #les arêtes arrière (c'est-à-dire les arêtes qui sont dans G mais pas dans T) sont orientés à l'opposé de r
            g1.add_edges([[i[0],i[1]]])
            #print("Je suis pas dans L ",i)

    g1.show()
    for v in g1.vertices():
        Couleur.append("Blanc")
    C=[]
    for v in L1:
        for e in g.edges():
            if( e not in L):
                if(e[0]==v):
                    x=e[0]
                    y=e[1]
                    if(e[0]==v) and Couleur[e[0]]=="Blanc":
                        C.append(e)
                        x=y
                    Couleur[x]="Gris"

    return C


Chain(g,0)

︡d51833b6-e563-4bf1-9ed7-574c476fad9e︡{"file":{"filename":"/home/user/.sage/temp/project-079e2560-d2d7-4337-bc21-5c8022bfce16/1378/tmp_f1riduis.svg","show":true,"text":null,"uuid":"01074da2-59de-420b-b42a-015de28b2b66"},"once":false}︡{"stdout":"[(0, 2, None), (0, 3, None), (1, 4, None), (7, 9, None)]"}︡{"stdout":"\n"}︡{"done":true}
︠8e8f3a11-a0a2-4689-89dc-88b5c06e4492︠

def programme(g,s):
    L=Chain(g,s);
    for i in L:
        if Couleur[i[0]] == "Blanc":
            S="not 2-edge-connected"
        elif L == 1:
                S="2-edge-connected but not 2-connected"
        else:
            S="2-connected"
    return S

programme(g,0)
︡bacf2d92-389c-4c65-bb58-363eb5f54bbe︡{"stdout":"(0, 1, None)\n(1, 2, None)\n(2, 3, None)\n(2, 4, None)\n(4, 5, None)\n(5, 6, None)\n(4, 7, None)\n(7, 8, None)\n(8, 9, None)\n"}︡{"file":{"filename":"/home/user/.sage/temp/project-079e2560-d2d7-4337-bc21-5c8022bfce16/689/tmp_tg91xxa1.svg","show":true,"text":null,"uuid":"83eb205a-0c0e-466d-b1d8-54786916b8f6"},"once":false}︡{"stdout":"'2-connected'"}︡{"stdout":"\n"}︡{"done":true}
︠67464359-c66d-410a-ad0d-a0c5958bb340︠

#EXERCICE02:
g1=Graph(4)# Graphe non orienté connexe
g1.add_edges([[0,1],[0,2],[2,3],[1,3]])
g1.show()

def fortement_Connexe(g1):
    g2 = DiGraph()#on crée un graph orienté fortement connexe a partir du graph non orienté
    for i in g1.edges():
        g2.add_edges([[i[0],i[1]]])
        g2.add_edges([[i[1],i[0]]])
    g2.show()

fortement_Connexe(g1)
︡8febb35d-5f58-4f49-9b62-c520b2dc9c8e︡{"file":{"filename":"/home/user/.sage/temp/project-079e2560-d2d7-4337-bc21-5c8022bfce16/1378/tmp_ttwvol7f.svg","show":true,"text":null,"uuid":"559031f0-a6c3-4f22-b2b4-b676f21376f2"},"once":false}︡{"file":{"filename":"/home/user/.sage/temp/project-079e2560-d2d7-4337-bc21-5c8022bfce16/1378/tmp_4zhhzyxi.svg","show":true,"text":null,"uuid":"260c0100-afd9-4715-a600-1d8ae8caa650"},"once":false}︡{"done":true}









