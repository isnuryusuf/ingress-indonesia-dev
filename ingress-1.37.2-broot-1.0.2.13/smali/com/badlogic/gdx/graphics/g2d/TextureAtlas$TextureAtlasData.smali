.class public Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final pages:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;",
            ">;"
        }
    .end annotation
.end field

.field final regions:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Z)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x4

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;->pages:Lcom/badlogic/gdx/utils/Array;

    .line 95
    new-instance v0, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v0}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;->regions:Lcom/badlogic/gdx/utils/Array;

    .line 98
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Lcom/badlogic/gdx/files/FileHandle;->read()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v1, 0x40

    invoke-direct {v8, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 100
    const/4 v0, 0x0

    .line 102
    :goto_0
    :try_start_0
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 103
    if-eqz v1, :cond_7

    .line 104
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 105
    const/4 v0, 0x0

    goto :goto_0

    .line 106
    :cond_0
    if-nez v0, :cond_4

    .line 107
    invoke-virtual {p2, v1}, Lcom/badlogic/gdx/files/FileHandle;->child(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    .line 109
    invoke-static {v8}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->readValue(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/Pixmap$Format;->valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Pixmap$Format;

    move-result-object v3

    .line 111
    invoke-static {v8}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->readTuple(Ljava/io/BufferedReader;)I

    .line 112
    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->tuple:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    move-result-object v4

    .line 113
    sget-object v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->tuple:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->valueOf(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    move-result-object v5

    .line 115
    invoke-static {v8}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->readValue(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v0

    .line 116
    sget-object v6, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 117
    sget-object v7, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->ClampToEdge:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 118
    const-string/jumbo v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 119
    sget-object v6, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 127
    :cond_1
    :goto_1
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;

    invoke-virtual {v4}, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->isMipMap()Z

    move-result v2

    invoke-direct/range {v0 .. v7}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;-><init>(Lcom/badlogic/gdx/files/FileHandle;ZLcom/badlogic/gdx/graphics/Pixmap$Format;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    .line 128
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;->pages:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 181
    :catch_0
    move-exception v0

    .line 182
    :try_start_1
    new-instance v1, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Error reading pack file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    :catchall_0
    move-exception v0

    .line 185
    :try_start_2
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 187
    :goto_2
    throw v0

    .line 120
    :cond_2
    :try_start_3
    const-string/jumbo v2, "y"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 121
    sget-object v7, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    goto :goto_1

    .line 122
    :cond_3
    const-string/jumbo v2, "xy"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    sget-object v6, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 124
    sget-object v7, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    goto :goto_1

    .line 130
    :cond_4
    invoke-static {v8}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->readValue(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 132
    invoke-static {v8}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->readTuple(Ljava/io/BufferedReader;)I

    .line 133
    sget-object v3, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->tuple:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 134
    sget-object v4, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->tuple:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 136
    invoke-static {v8}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->readTuple(Ljava/io/BufferedReader;)I

    .line 137
    sget-object v5, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->tuple:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 138
    sget-object v6, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->tuple:[Ljava/lang/String;

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 140
    new-instance v7, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;

    invoke-direct {v7}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;-><init>()V

    .line 141
    iput-object v0, v7, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->page:Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;

    .line 142
    iput v3, v7, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->left:I

    .line 143
    iput v4, v7, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->top:I

    .line 144
    iput v5, v7, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->width:I

    .line 145
    iput v6, v7, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->height:I

    .line 146
    iput-object v1, v7, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->name:Ljava/lang/String;

    .line 147
    iput-boolean v2, v7, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->rotate:Z

    .line 149
    invoke-static {v8}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->readTuple(Ljava/io/BufferedReader;)I

    move-result v1

    if-ne v1, v9, :cond_5

    .line 150
    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    sget-object v3, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->tuple:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->tuple:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->tuple:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->tuple:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    iput-object v1, v7, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->splits:[I

    .line 152
    invoke-static {v8}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->readTuple(Ljava/io/BufferedReader;)I

    .line 167
    :cond_5
    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->tuple:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v7, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->originalWidth:I

    .line 168
    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->tuple:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v7, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->originalHeight:I

    .line 170
    invoke-static {v8}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->readTuple(Ljava/io/BufferedReader;)I

    .line 171
    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->tuple:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    iput v1, v7, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->offsetX:F

    .line 172
    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->tuple:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    iput v1, v7, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->offsetY:F

    .line 174
    invoke-static {v8}, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->readValue(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v7, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->index:I

    .line 176
    if-eqz p3, :cond_6

    const/4 v1, 0x1

    iput-boolean v1, v7, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;->flip:Z

    .line 178
    :cond_6
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;->regions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v7}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 185
    :cond_7
    :try_start_4
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 190
    :goto_3
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;->regions:Lcom/badlogic/gdx/utils/Array;

    sget-object v1, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas;->indexComparator:Ljava/util/Comparator;

    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->sort(Ljava/util/Comparator;)V

    .line 191
    return-void

    .line 188
    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v1

    goto/16 :goto_2
.end method


# virtual methods
.method public getPages()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Page;",
            ">;"
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;->pages:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getRegions()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array",
            "<",
            "Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData$Region;",
            ">;"
        }
    .end annotation

    .prologue
    .line 198
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/TextureAtlas$TextureAtlasData;->regions:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method
