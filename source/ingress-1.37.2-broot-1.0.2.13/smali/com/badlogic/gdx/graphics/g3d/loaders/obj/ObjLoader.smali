.class public Lcom/badlogic/gdx/graphics/g3d/loaders/obj/ObjLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getIndex(Ljava/lang/String;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 263
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 268
    :goto_0
    return v0

    .line 264
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 265
    if-gez v0, :cond_2

    .line 266
    add-int/2addr v0, p1

    goto :goto_0

    .line 268
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static loadObj(Ljava/io/InputStream;)Lcom/badlogic/gdx/graphics/Mesh;
    .locals 1
    .parameter

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/obj/ObjLoader;->loadObj(Ljava/io/InputStream;Z)Lcom/badlogic/gdx/graphics/Mesh;

    move-result-object v0

    return-object v0
.end method

.method public static loadObj(Ljava/io/InputStream;Z)Lcom/badlogic/gdx/graphics/Mesh;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 45
    .line 48
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 49
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 50
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 51
    :goto_0
    if-eqz v0, :cond_0

    .line 52
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    const-string/jumbo v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 58
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    invoke-static {v0, p1}, Lcom/badlogic/gdx/graphics/g3d/loaders/obj/ObjLoader;->loadObjFromString(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/Mesh;

    move-result-object v0

    :goto_1
    return-object v0

    .line 60
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static loadObj(Ljava/io/InputStream;ZZ)Lcom/badlogic/gdx/graphics/Mesh;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    .line 73
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 74
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 75
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 76
    :goto_0
    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    const-string/jumbo v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    invoke-static {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g3d/loaders/obj/ObjLoader;->loadObjFromString(Ljava/lang/String;ZZ)Lcom/badlogic/gdx/graphics/Mesh;

    move-result-object v0

    :goto_1
    return-object v0

    .line 85
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static loadObjFromString(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Mesh;
    .locals 1
    .parameter

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/obj/ObjLoader;->loadObjFromString(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/Mesh;

    move-result-object v0

    return-object v0
.end method

.method public static loadObjFromString(Ljava/lang/String;Z)Lcom/badlogic/gdx/graphics/Mesh;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g3d/loaders/obj/ObjLoader;->loadObjFromString(Ljava/lang/String;ZZ)Lcom/badlogic/gdx/graphics/Mesh;

    move-result-object v0

    return-object v0
.end method

.method public static loadObjFromString(Ljava/lang/String;ZZ)Lcom/badlogic/gdx/graphics/Mesh;
    .locals 21
    .parameter
    .parameter
    .parameter

    .prologue
    .line 114
    const-string/jumbo v2, "\n"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 115
    array-length v2, v10

    mul-int/lit8 v2, v2, 0x3

    new-array v11, v2, [F

    .line 116
    array-length v2, v10

    mul-int/lit8 v2, v2, 0x3

    new-array v12, v2, [F

    .line 117
    array-length v2, v10

    mul-int/lit8 v2, v2, 0x3

    new-array v13, v2, [F

    .line 119
    const/4 v8, 0x0

    .line 120
    const/4 v7, 0x0

    .line 121
    const/4 v6, 0x0

    .line 123
    new-instance v14, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v14}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    .line 124
    new-instance v15, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct {v15}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    .line 125
    new-instance v16, Lcom/badlogic/gdx/utils/IntArray;

    invoke-direct/range {v16 .. v16}, Lcom/badlogic/gdx/utils/IntArray;-><init>()V

    .line 126
    const/4 v5, 0x0

    .line 127
    const/4 v4, 0x0

    .line 128
    const/4 v3, 0x0

    .line 130
    const/4 v2, 0x0

    :goto_0
    array-length v9, v10

    if-ge v2, v9, :cond_b

    .line 131
    aget-object v9, v10, v2

    .line 132
    const-string/jumbo v17, "v "

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 133
    const-string/jumbo v17, "[ ]+"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 134
    const/16 v17, 0x1

    aget-object v17, v9, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v17

    aput v17, v11, v5

    .line 135
    add-int/lit8 v17, v5, 0x1

    const/16 v18, 0x2

    aget-object v18, v9, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v18

    aput v18, v11, v17

    .line 136
    add-int/lit8 v17, v5, 0x2

    const/16 v18, 0x3

    aget-object v9, v9, v18

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    aput v9, v11, v17

    .line 137
    add-int/lit8 v5, v5, 0x3

    .line 138
    add-int/lit8 v8, v8, 0x1

    .line 185
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 142
    :cond_1
    const-string/jumbo v17, "vn "

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 143
    const-string/jumbo v17, "[ ]+"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 144
    const/16 v17, 0x1

    aget-object v17, v9, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v17

    aput v17, v12, v4

    .line 145
    add-int/lit8 v17, v4, 0x1

    const/16 v18, 0x2

    aget-object v18, v9, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v18

    aput v18, v12, v17

    .line 146
    add-int/lit8 v17, v4, 0x2

    const/16 v18, 0x3

    aget-object v9, v9, v18

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    aput v9, v12, v17

    .line 147
    add-int/lit8 v4, v4, 0x3

    .line 148
    add-int/lit8 v7, v7, 0x1

    .line 149
    goto :goto_1

    .line 152
    :cond_2
    const-string/jumbo v17, "vt"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 153
    const-string/jumbo v17, "[ ]+"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 154
    const/16 v17, 0x1

    aget-object v17, v9, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v17

    aput v17, v13, v3

    .line 155
    add-int/lit8 v17, v3, 0x1

    if-eqz p1, :cond_3

    const/high16 v18, 0x3f80

    const/16 v19, 0x2

    aget-object v9, v9, v19

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    sub-float v9, v18, v9

    :goto_2
    aput v9, v13, v17

    .line 156
    add-int/lit8 v3, v3, 0x2

    .line 157
    add-int/lit8 v6, v6, 0x1

    .line 158
    goto :goto_1

    .line 155
    :cond_3
    const/16 v18, 0x2

    aget-object v9, v9, v18

    invoke-static {v9}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    goto :goto_2

    .line 161
    :cond_4
    const-string/jumbo v17, "f "

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 162
    const-string/jumbo v17, "[ ]+"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    .line 166
    const/4 v9, 0x3

    :goto_3
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v9, v0, :cond_0

    .line 169
    const/16 v18, 0x1

    aget-object v18, v17, v18

    const-string/jumbo v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 170
    const/16 v19, 0x0

    aget-object v19, v18, v19

    move-object/from16 v0, v19

    invoke-static {v0, v8}, Lcom/badlogic/gdx/graphics/g3d/loaders/obj/ObjLoader;->getIndex(Ljava/lang/String;I)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 171
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_5

    const/16 v19, 0x2

    aget-object v19, v18, v19

    move-object/from16 v0, v19

    invoke-static {v0, v7}, Lcom/badlogic/gdx/graphics/g3d/loaders/obj/ObjLoader;->getIndex(Ljava/lang/String;I)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 172
    :cond_5
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_6

    const/16 v19, 0x1

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    invoke-static {v0, v6}, Lcom/badlogic/gdx/graphics/g3d/loaders/obj/ObjLoader;->getIndex(Ljava/lang/String;I)I

    move-result v18

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 174
    :cond_6
    add-int/lit8 v18, v9, -0x1

    aget-object v18, v17, v18

    const-string/jumbo v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 175
    const/16 v19, 0x0

    aget-object v19, v18, v19

    move-object/from16 v0, v19

    invoke-static {v0, v8}, Lcom/badlogic/gdx/graphics/g3d/loaders/obj/ObjLoader;->getIndex(Ljava/lang/String;I)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 176
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_7

    const/16 v19, 0x2

    aget-object v19, v18, v19

    move-object/from16 v0, v19

    invoke-static {v0, v7}, Lcom/badlogic/gdx/graphics/g3d/loaders/obj/ObjLoader;->getIndex(Ljava/lang/String;I)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 177
    :cond_7
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_8

    const/16 v19, 0x1

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    invoke-static {v0, v6}, Lcom/badlogic/gdx/graphics/g3d/loaders/obj/ObjLoader;->getIndex(Ljava/lang/String;I)I

    move-result v18

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 179
    :cond_8
    aget-object v18, v17, v9

    const-string/jumbo v19, "/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 180
    const/16 v19, 0x0

    aget-object v19, v18, v19

    move-object/from16 v0, v19

    invoke-static {v0, v8}, Lcom/badlogic/gdx/graphics/g3d/loaders/obj/ObjLoader;->getIndex(Ljava/lang/String;I)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v14, v0}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 181
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_9

    const/16 v19, 0x2

    aget-object v19, v18, v19

    move-object/from16 v0, v19

    invoke-static {v0, v7}, Lcom/badlogic/gdx/graphics/g3d/loaders/obj/ObjLoader;->getIndex(Ljava/lang/String;I)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 182
    :cond_9
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_a

    const/16 v19, 0x1

    aget-object v18, v18, v19

    move-object/from16 v0, v18

    invoke-static {v0, v6}, Lcom/badlogic/gdx/graphics/g3d/loaders/obj/ObjLoader;->getIndex(Ljava/lang/String;I)I

    move-result v18

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/IntArray;->add(I)V

    .line 166
    :cond_a
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 189
    :cond_b
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 192
    new-instance v2, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v3, 0x0

    const/4 v5, 0x3

    const-string/jumbo v9, "a_position"

    invoke-direct {v2, v3, v5, v9}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    if-lez v7, :cond_c

    new-instance v2, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v3, 0x2

    const/4 v5, 0x3

    const-string/jumbo v9, "a_normal"

    invoke-direct {v2, v3, v5, v9}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_c
    if-lez v6, :cond_d

    new-instance v2, Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v3, 0x3

    const/4 v5, 0x2

    const-string/jumbo v9, "a_texCoord0"

    invoke-direct {v2, v3, v5, v9}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    :cond_d
    iget v2, v14, Lcom/badlogic/gdx/utils/IntArray;->size:I

    div-int/lit8 v5, v2, 0x3

    .line 197
    if-eqz p2, :cond_16

    .line 198
    if-lez v7, :cond_e

    const/4 v2, 0x3

    :goto_4
    add-int/lit8 v3, v2, 0x3

    if-lez v6, :cond_f

    const/4 v2, 0x2

    :goto_5
    add-int/2addr v3, v2

    .line 200
    if-lez v7, :cond_10

    const/4 v2, 0x3

    :goto_6
    add-int/lit8 v9, v2, 0x3

    .line 202
    mul-int v2, v8, v3

    new-array v10, v2, [F

    .line 204
    const/4 v2, 0x0

    :goto_7
    if-ge v2, v8, :cond_11

    .line 205
    mul-int v17, v2, v3

    mul-int/lit8 v18, v2, 0x3

    aget v18, v11, v18

    aput v18, v10, v17

    .line 206
    mul-int v17, v2, v3

    add-int/lit8 v17, v17, 0x1

    mul-int/lit8 v18, v2, 0x3

    add-int/lit8 v18, v18, 0x1

    aget v18, v11, v18

    aput v18, v10, v17

    .line 207
    mul-int v17, v2, v3

    add-int/lit8 v17, v17, 0x2

    mul-int/lit8 v18, v2, 0x3

    add-int/lit8 v18, v18, 0x2

    aget v18, v11, v18

    aput v18, v10, v17

    .line 204
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 198
    :cond_e
    const/4 v2, 0x0

    goto :goto_4

    :cond_f
    const/4 v2, 0x0

    goto :goto_5

    .line 200
    :cond_10
    const/4 v2, 0x0

    goto :goto_6

    .line 210
    :cond_11
    const/4 v2, 0x0

    :goto_8
    mul-int/lit8 v8, v5, 0x3

    if-ge v2, v8, :cond_14

    .line 211
    invoke-virtual {v14, v2}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v8

    .line 213
    if-lez v7, :cond_12

    .line 214
    invoke-virtual {v15, v2}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v11

    mul-int/lit8 v11, v11, 0x3

    .line 215
    mul-int v17, v8, v3

    add-int/lit8 v17, v17, 0x3

    aget v18, v12, v11

    aput v18, v10, v17

    .line 216
    mul-int v17, v8, v3

    add-int/lit8 v17, v17, 0x3

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v18, v11, 0x1

    aget v18, v12, v18

    aput v18, v10, v17

    .line 217
    mul-int v17, v8, v3

    add-int/lit8 v17, v17, 0x3

    add-int/lit8 v17, v17, 0x2

    add-int/lit8 v11, v11, 0x2

    aget v11, v12, v11

    aput v11, v10, v17

    .line 219
    :cond_12
    if-lez v6, :cond_13

    .line 220
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v11

    mul-int/lit8 v11, v11, 0x2

    .line 221
    mul-int v17, v8, v3

    add-int v17, v17, v9

    aget v18, v13, v11

    aput v18, v10, v17

    .line 222
    mul-int/2addr v8, v3

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v11, v11, 0x1

    aget v11, v13, v11

    aput v11, v10, v8

    .line 210
    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 226
    :cond_14
    mul-int/lit8 v2, v5, 0x3

    new-array v5, v2, [S

    .line 227
    const/4 v2, 0x0

    :goto_9
    array-length v3, v5

    if-ge v2, v3, :cond_15

    .line 228
    invoke-virtual {v14, v2}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v3

    int-to-short v3, v3

    aput-short v3, v5, v2

    .line 227
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 230
    :cond_15
    new-instance v3, Lcom/badlogic/gdx/graphics/Mesh;

    const/4 v6, 0x1

    array-length v7, v10

    array-length v8, v5

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    invoke-direct {v3, v6, v7, v8, v2}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(ZII[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    .line 231
    invoke-virtual {v3, v10}, Lcom/badlogic/gdx/graphics/Mesh;->setVertices([F)V

    .line 232
    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/graphics/Mesh;->setIndices([S)V

    move-object v2, v3

    .line 259
    :goto_a
    return-object v2

    .line 234
    :cond_16
    mul-int/lit8 v3, v5, 0x3

    if-lez v7, :cond_19

    const/4 v2, 0x3

    :goto_b
    add-int/lit8 v8, v2, 0x3

    if-lez v6, :cond_1a

    const/4 v2, 0x2

    :goto_c
    add-int/2addr v2, v8

    mul-int/2addr v2, v3

    new-array v8, v2, [F

    .line 236
    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_d
    mul-int/lit8 v9, v5, 0x3

    if-ge v3, v9, :cond_1b

    .line 237
    invoke-virtual {v14, v3}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v9

    mul-int/lit8 v9, v9, 0x3

    .line 238
    add-int/lit8 v10, v2, 0x1

    aget v17, v11, v9

    aput v17, v8, v2

    .line 239
    add-int/lit8 v17, v10, 0x1

    add-int/lit8 v2, v9, 0x1

    aget v2, v11, v2

    aput v2, v8, v10

    .line 240
    add-int/lit8 v2, v17, 0x1

    add-int/lit8 v9, v9, 0x2

    aget v9, v11, v9

    aput v9, v8, v17

    .line 242
    if-lez v7, :cond_17

    .line 243
    invoke-virtual {v15, v3}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v9

    mul-int/lit8 v9, v9, 0x3

    .line 244
    add-int/lit8 v10, v2, 0x1

    aget v17, v12, v9

    aput v17, v8, v2

    .line 245
    add-int/lit8 v17, v10, 0x1

    add-int/lit8 v2, v9, 0x1

    aget v2, v12, v2

    aput v2, v8, v10

    .line 246
    add-int/lit8 v2, v17, 0x1

    add-int/lit8 v9, v9, 0x2

    aget v9, v12, v9

    aput v9, v8, v17

    .line 248
    :cond_17
    if-lez v6, :cond_18

    .line 249
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/badlogic/gdx/utils/IntArray;->get(I)I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    .line 250
    add-int/lit8 v10, v2, 0x1

    aget v17, v13, v9

    aput v17, v8, v2

    .line 251
    add-int/lit8 v2, v10, 0x1

    add-int/lit8 v9, v9, 0x1

    aget v9, v13, v9

    aput v9, v8, v10

    .line 236
    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 234
    :cond_19
    const/4 v2, 0x0

    goto :goto_b

    :cond_1a
    const/4 v2, 0x0

    goto :goto_c

    .line 255
    :cond_1b
    new-instance v3, Lcom/badlogic/gdx/graphics/Mesh;

    const/4 v6, 0x1

    mul-int/lit8 v5, v5, 0x3

    const/4 v7, 0x0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    invoke-direct {v3, v6, v5, v7, v2}, Lcom/badlogic/gdx/graphics/Mesh;-><init>(ZII[Lcom/badlogic/gdx/graphics/VertexAttribute;)V

    .line 256
    invoke-virtual {v3, v8}, Lcom/badlogic/gdx/graphics/Mesh;->setVertices([F)V

    move-object v2, v3

    goto/16 :goto_a
.end method
