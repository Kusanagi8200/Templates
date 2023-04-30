
# -*- coding: utf-8 -*-

import os
import shutil

# Spécifier le chemin absolu du dossier /tmp
tmp_dir = '/tmp'

# Obtenir la liste des fichiers et dossiers dans /tmp
files = os.listdir(tmp_dir)

# Supprimer chaque élément de la liste
for f in files:
    path = os.path.join(tmp_dir, f)
    if os.path.isfile(path):
        os.remove(path)
    elif os.path.isdir(path):
        shutil.rmtree(path)

# Terminer le programme
exit() 
