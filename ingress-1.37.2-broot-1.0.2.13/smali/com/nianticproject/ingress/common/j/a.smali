.class public final Lcom/nianticproject/ingress/common/j/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/lang/String;)Lcom/nianticproject/ingress/common/j/c;
    .locals 12
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 103
    invoke-static {p0}, Lcom/nianticproject/ingress/common/b/c;->d(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 105
    :try_start_0
    const-string/jumbo v0, "LoadObjBinary"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V

    .line 106
    new-instance v8, Ljava/io/ObjectInputStream;

    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [S

    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [S

    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    new-array v4, v0, [Lcom/badlogic/gdx/graphics/VertexAttribute;

    const/4 v0, 0x0

    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_0

    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v5

    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v9

    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lcom/badlogic/gdx/graphics/VertexAttribute;

    invoke-direct {v11, v5, v9, v10}, Lcom/badlogic/gdx/graphics/VertexAttribute;-><init>(IILjava/lang/String;)V

    aput-object v11, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->readBoolean()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v5, Lcom/nianticproject/ingress/common/j/b;

    invoke-direct {v5}, Lcom/nianticproject/ingress/common/j/b;-><init>()V

    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/nianticproject/ingress/common/j/b;->a:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/nianticproject/ingress/common/j/b;->b:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, v5, Lcom/nianticproject/ingress/common/j/b;->c:[Ljava/lang/String;

    :goto_1
    invoke-virtual {v8}, Ljava/io/ObjectInputStream;->close()V

    new-instance v0, Lcom/nianticproject/ingress/common/j/c;

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/j/c;-><init>([F[S[S[Lcom/badlogic/gdx/graphics/VertexAttribute;Lcom/nianticproject/ingress/common/j/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 112
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 114
    :try_start_1
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 116
    :goto_2
    return-object v0

    .line 108
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 114
    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    move-object v0, v6

    .line 116
    goto :goto_2

    .line 110
    :catch_1
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 114
    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :goto_4
    move-object v0, v6

    .line 116
    goto :goto_2

    .line 112
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 114
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 116
    :goto_5
    throw v0

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_5

    :cond_1
    move-object v5, v6

    goto :goto_1
.end method

.method public static a([F[S[S[Lcom/badlogic/gdx/graphics/VertexAttribute;)Lcom/nianticproject/ingress/common/j/c;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    new-instance v0, Lcom/nianticproject/ingress/common/j/c;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/j/c;-><init>([F[S[S[Lcom/badlogic/gdx/graphics/VertexAttribute;Lcom/nianticproject/ingress/common/j/b;)V

    return-object v0
.end method
