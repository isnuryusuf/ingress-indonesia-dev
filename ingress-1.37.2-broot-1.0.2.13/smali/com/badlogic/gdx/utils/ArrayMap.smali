.class public Lcom/badlogic/gdx/utils/ArrayMap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private entries:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

.field public keys:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TK;"
        }
    .end annotation
.end field

.field private keysIter:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

.field public ordered:Z

.field public size:I

.field public values:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field

.field private valuesIter:Lcom/badlogic/gdx/utils/ArrayMap$Values;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 45
    const/4 v0, 0x1

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1}, Lcom/badlogic/gdx/utils/ArrayMap;-><init>(ZI)V

    .line 46
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter

    .prologue
    .line 50
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/utils/ArrayMap;-><init>(ZI)V

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/utils/ArrayMap;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 81
    iget-boolean v0, p1, Lcom/badlogic/gdx/utils/ArrayMap;->ordered:Z

    iget v1, p1, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    iget-object v2, p1, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p1, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/utils/ArrayMap;-><init>(ZILjava/lang/Class;Ljava/lang/Class;)V

    .line 83
    iget v0, p1, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    iput v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .line 84
    iget-object v0, p1, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    iget-object v0, p1, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TK;>;",
            "Ljava/lang/Class",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 74
    const/4 v0, 0x0

    const/16 v1, 0x10

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/badlogic/gdx/utils/ArrayMap;-><init>(ZILjava/lang/Class;Ljava/lang/Class;)V

    .line 75
    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->ordered:Z

    .line 58
    new-array v0, p2, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    .line 59
    new-array v0, p2, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    .line 60
    return-void
.end method

.method public constructor <init>(ZILjava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/lang/Class",
            "<TK;>;",
            "Ljava/lang/Class",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-boolean p1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->ordered:Z

    .line 68
    invoke-static {p3, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    .line 69
    invoke-static {p4, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    .line 70
    return-void
.end method


# virtual methods
.method public addAll(Lcom/badlogic/gdx/utils/ArrayMap;)V
    .locals 2
    .parameter

    .prologue
    .line 108
    const/4 v0, 0x0

    iget v1, p1, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/badlogic/gdx/utils/ArrayMap;->addAll(Lcom/badlogic/gdx/utils/ArrayMap;II)V

    .line 109
    return-void
.end method

.method public addAll(Lcom/badlogic/gdx/utils/ArrayMap;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 112
    add-int v0, p2, p3

    iget v1, p1, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-le v0, v1, :cond_0

    .line 113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "offset + length must be <= size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " <= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_0
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/2addr v0, p3

    sub-int/2addr v0, p2

    .line 115
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    const/16 v1, 0x8

    int-to-float v0, v0

    const/high16 v2, 0x3fe0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ArrayMap;->resize(I)V

    .line 116
    :cond_1
    iget-object v0, p1, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    invoke-static {v0, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 117
    iget-object v0, p1, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    invoke-static {v0, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .line 119
    return-void
.end method

.method public clear()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 306
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    .line 307
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    .line 308
    iget v4, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    .line 309
    aput-object v5, v2, v0

    .line 310
    aput-object v5, v3, v0

    .line 308
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 312
    :cond_0
    iput v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .line 313
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 187
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    .line 188
    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/lit8 v1, v1, -0x1

    .line 189
    if-nez p1, :cond_1

    .line 190
    :goto_0
    if-ltz v1, :cond_2

    .line 191
    add-int/lit8 v2, v1, -0x1

    aget-object v1, v3, v1

    if-ne v1, p1, :cond_3

    .line 196
    :goto_1
    return v0

    :cond_0
    move v1, v2

    .line 193
    :cond_1
    if-ltz v1, :cond_2

    .line 194
    add-int/lit8 v2, v1, -0x1

    aget-object v1, v3, v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 196
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;Z)Z
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;Z)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 201
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    .line 202
    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/lit8 v1, v1, -0x1

    .line 203
    if-nez p2, :cond_0

    if-nez p1, :cond_2

    .line 204
    :cond_0
    :goto_0
    if-ltz v1, :cond_3

    .line 205
    add-int/lit8 v2, v1, -0x1

    aget-object v1, v3, v1

    if-ne v1, p1, :cond_4

    .line 210
    :goto_1
    return v0

    :cond_1
    move v1, v2

    .line 207
    :cond_2
    if-ltz v1, :cond_3

    .line 208
    add-int/lit8 v2, v1, -0x1

    aget-object v1, v3, v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 210
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public ensureCapacity(I)V
    .locals 2
    .parameter

    .prologue
    .line 324
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/2addr v0, p1

    .line 325
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/16 v1, 0x8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ArrayMap;->resize(I)V

    .line 326
    :cond_0
    return-void
.end method

.method public entries()Lcom/badlogic/gdx/utils/ArrayMap$Entries;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ArrayMap$Entries",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 397
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->entries:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    if-nez v0, :cond_0

    .line 398
    new-instance v0, Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ArrayMap$Entries;-><init>(Lcom/badlogic/gdx/utils/ArrayMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->entries:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    .line 401
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->entries:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    return-object v0

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->entries:Lcom/badlogic/gdx/utils/ArrayMap$Entries;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ArrayMap$Entries;->reset()V

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    .line 125
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/lit8 v0, v0, -0x1

    .line 126
    if-nez p1, :cond_2

    .line 127
    :goto_0
    if-ltz v0, :cond_3

    .line 128
    aget-object v2, v1, v0

    if-ne v2, p1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aget-object v0, v1, v0

    .line 133
    :goto_1
    return-object v0

    .line 127
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 130
    :cond_1
    add-int/lit8 v0, v0, -0x1

    :cond_2
    if-ltz v0, :cond_3

    .line 131
    aget-object v2, v1, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aget-object v0, v1, v0

    goto :goto_1

    .line 133
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getKey(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;Z)TK;"
        }
    .end annotation

    .prologue
    .line 140
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    .line 141
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/lit8 v0, v0, -0x1

    .line 142
    if-nez p2, :cond_0

    if-nez v1, :cond_3

    .line 143
    :cond_0
    :goto_0
    if-ltz v0, :cond_4

    .line 144
    aget-object v2, v1, v0

    if-ne v2, v1, :cond_1

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aget-object v0, v1, v0

    .line 149
    :goto_1
    return-object v0

    .line 143
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 146
    :cond_2
    add-int/lit8 v0, v0, -0x1

    :cond_3
    if-ltz v0, :cond_4

    .line 147
    aget-object v2, v1, v0

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aget-object v0, v1, v0

    goto :goto_1

    .line 149
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getKeyAt(I)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .prologue
    .line 153
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getValueAt(I)Ljava/lang/Object;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 158
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public indexOfKey(Ljava/lang/Object;)I
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 214
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    .line 215
    if-nez p1, :cond_2

    .line 216
    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    :goto_0
    if-ge v0, v2, :cond_3

    .line 217
    aget-object v3, v1, v0

    if-ne v3, p1, :cond_1

    .line 222
    :cond_0
    :goto_1
    return v0

    .line 216
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    :cond_2
    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    :goto_2
    if-ge v0, v2, :cond_3

    .line 220
    aget-object v3, v1, v0

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 219
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 222
    :cond_3
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public indexOfValue(Ljava/lang/Object;Z)I
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;Z)I"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 226
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    .line 227
    if-nez p2, :cond_0

    if-nez p1, :cond_3

    .line 228
    :cond_0
    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    :goto_0
    if-ge v0, v2, :cond_4

    .line 229
    aget-object v3, v1, v0

    if-ne v3, p1, :cond_2

    .line 234
    :cond_1
    :goto_1
    return v0

    .line 228
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    :cond_3
    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    :goto_2
    if-ge v0, v2, :cond_4

    .line 232
    aget-object v3, v1, v0

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 234
    :cond_4
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public insert(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;)V"
        }
    .end annotation

    .prologue
    .line 173
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x8

    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    int-to-float v1, v1

    const/high16 v2, 0x3fe0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ArrayMap;->resize(I)V

    .line 174
    :cond_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->ordered:Z

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    iget v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    sub-int/2addr v3, p1

    invoke-static {v0, p1, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 181
    :goto_0
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .line 182
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 183
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aput-object p3, v0, p1

    .line 184
    return-void

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aget-object v2, v2, p1

    aput-object v2, v0, v1

    .line 179
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aget-object v2, v2, p1

    aput-object v2, v0, v1

    goto :goto_0
.end method

.method public keys()Lcom/badlogic/gdx/utils/ArrayMap$Keys;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ArrayMap$Keys",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 417
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keysIter:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    if-nez v0, :cond_0

    .line 418
    new-instance v0, Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ArrayMap$Keys;-><init>(Lcom/badlogic/gdx/utils/ArrayMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keysIter:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    .line 421
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keysIter:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    return-object v0

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keysIter:Lcom/badlogic/gdx/utils/ArrayMap$Keys;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ArrayMap$Keys;->reset()V

    goto :goto_0
.end method

.method public peekKey()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public peekValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 302
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 89
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x8

    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    int-to-float v1, v1

    const/high16 v2, 0x3fe0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ArrayMap;->resize(I)V

    .line 90
    :cond_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 91
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .line 92
    :cond_1
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 93
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aput-object p2, v1, v0

    .line 94
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;I)V"
        }
    .end annotation

    .prologue
    .line 97
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x8

    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    int-to-float v1, v1

    const/high16 v2, 0x3fe0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ArrayMap;->resize(I)V

    .line 98
    :cond_0
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/utils/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 99
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ArrayMap;->removeIndex(I)V

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    add-int/lit8 v2, p3, 0x1

    iget v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    sub-int/2addr v3, p3

    invoke-static {v0, p3, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 101
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    add-int/lit8 v2, p3, 0x1

    iget v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    sub-int/2addr v3, p3

    invoke-static {v0, p3, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 102
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aput-object p1, v0, p3

    .line 103
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aput-object p2, v0, p3

    .line 104
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .line 105
    return-void
.end method

.method public removeIndex(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 281
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    .line 283
    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    .line 284
    iget-boolean v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->ordered:Z

    if-eqz v1, :cond_1

    .line 285
    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    sub-int/2addr v2, p1

    invoke-static {v0, v1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 286
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget v4, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    sub-int/2addr v4, p1

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 291
    :goto_0
    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    aput-object v5, v0, v1

    .line 292
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    aput-object v5, v0, v1

    .line 293
    return-void

    .line 288
    :cond_1
    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    aget-object v1, v0, v1

    aput-object v1, v0, p1

    .line 289
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    aget-object v2, v2, v3

    aput-object v2, v1, p1

    goto :goto_0
.end method

.method public removeKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 238
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    .line 239
    if-nez p1, :cond_1

    .line 240
    iget v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_3

    .line 241
    aget-object v0, v2, v1

    if-ne v0, p1, :cond_0

    .line 242
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aget-object v0, v0, v1

    .line 243
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ArrayMap;->removeIndex(I)V

    .line 256
    :goto_1
    return-object v0

    .line 240
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 248
    :cond_1
    iget v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    move v1, v0

    :goto_2
    if-ge v1, v3, :cond_3

    .line 249
    aget-object v0, v2, v1

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 250
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aget-object v0, v0, v1

    .line 251
    invoke-virtual {p0, v1}, Lcom/badlogic/gdx/utils/ArrayMap;->removeIndex(I)V

    goto :goto_1

    .line 248
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 256
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public removeValue(Ljava/lang/Object;Z)Z
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;Z)Z"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 260
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    .line 261
    if-nez p2, :cond_0

    if-nez p1, :cond_2

    .line 262
    :cond_0
    iget v4, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_4

    .line 263
    aget-object v5, v3, v2

    if-ne v5, p1, :cond_1

    .line 264
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/ArrayMap;->removeIndex(I)V

    .line 276
    :goto_1
    return v0

    .line 262
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 269
    :cond_2
    iget v4, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    move v2, v1

    :goto_2
    if-ge v2, v4, :cond_4

    .line 270
    aget-object v5, v3, v2

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 271
    invoke-virtual {p0, v2}, Lcom/badlogic/gdx/utils/ArrayMap;->removeIndex(I)V

    goto :goto_1

    .line 269
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    move v0, v1

    .line 276
    goto :goto_1
.end method

.method protected resize(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 329
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 330
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    array-length v2, v2

    array-length v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 331
    iput-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    .line 333
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 334
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    array-length v2, v2

    array-length v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 335
    iput-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    .line 336
    return-void
.end method

.method public reverse()V
    .locals 7

    .prologue
    .line 339
    const/4 v0, 0x0

    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    div-int/lit8 v2, v2, 0x2

    :goto_0
    if-ge v0, v2, :cond_0

    .line 340
    sub-int v3, v1, v0

    .line 341
    iget-object v4, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aget-object v4, v4, v0

    .line 342
    iget-object v5, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget-object v6, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aget-object v6, v6, v3

    aput-object v6, v5, v0

    .line 343
    iget-object v5, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aput-object v4, v5, v3

    .line 345
    iget-object v4, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aget-object v4, v4, v0

    .line 346
    iget-object v5, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget-object v6, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aget-object v6, v6, v3

    aput-object v6, v5, v0

    .line 347
    iget-object v5, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aput-object v4, v5, v3

    .line 339
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 349
    :cond_0
    return-void
.end method

.method public setKey(ILjava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;)V"
        }
    .end annotation

    .prologue
    .line 163
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 165
    return-void
.end method

.method public setValue(ILjava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .prologue
    .line 168
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 170
    return-void
.end method

.method public shrink()V
    .locals 1

    .prologue
    .line 318
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/utils/ArrayMap;->resize(I)V

    .line 319
    return-void
.end method

.method public shuffle()V
    .locals 5

    .prologue
    .line 352
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 353
    invoke-static {v0}, Lcom/badlogic/gdx/math/MathUtils;->random(I)I

    move-result v1

    .line 354
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aget-object v2, v2, v0

    .line 355
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    iget-object v4, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aget-object v4, v4, v1

    aput-object v4, v3, v0

    .line 356
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aput-object v2, v3, v1

    .line 358
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aget-object v2, v2, v0

    .line 359
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    iget-object v4, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aget-object v4, v4, v1

    aput-object v4, v3, v0

    .line 360
    iget-object v3, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aput-object v2, v3, v1

    .line 352
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 362
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x3d

    const/4 v4, 0x0

    .line 376
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-nez v0, :cond_0

    const-string/jumbo v0, "{}"

    .line 391
    :goto_0
    return-object v0

    .line 377
    :cond_0
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    .line 378
    iget-object v2, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    .line 379
    new-instance v3, Lcom/badlogic/gdx/utils/StringBuilder;

    const/16 v0, 0x20

    invoke-direct {v3, v0}, Lcom/badlogic/gdx/utils/StringBuilder;-><init>(I)V

    .line 380
    const/16 v0, 0x7b

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 381
    aget-object v0, v1, v4

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 382
    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 383
    aget-object v0, v2, v4

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 384
    const/4 v0, 0x1

    :goto_1
    iget v4, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-ge v0, v4, :cond_1

    .line 385
    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/String;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 386
    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 387
    invoke-virtual {v3, v5}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 388
    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Lcom/badlogic/gdx/utils/StringBuilder;->append(Ljava/lang/Object;)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 384
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 390
    :cond_1
    const/16 v0, 0x7d

    invoke-virtual {v3, v0}, Lcom/badlogic/gdx/utils/StringBuilder;->append(C)Lcom/badlogic/gdx/utils/StringBuilder;

    .line 391
    invoke-virtual {v3}, Lcom/badlogic/gdx/utils/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public truncate(I)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 367
    iget v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-gt v0, p1, :cond_0

    .line 373
    :goto_0
    return-void

    :cond_0
    move v0, p1

    .line 368
    :goto_1
    iget v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    if-ge v0, v1, :cond_1

    .line 369
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->keys:[Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 370
    iget-object v1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->values:[Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 368
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 372
    :cond_1
    iput p1, p0, Lcom/badlogic/gdx/utils/ArrayMap;->size:I

    goto :goto_0
.end method

.method public values()Lcom/badlogic/gdx/utils/ArrayMap$Values;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/ArrayMap$Values",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 407
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->valuesIter:Lcom/badlogic/gdx/utils/ArrayMap$Values;

    if-nez v0, :cond_0

    .line 408
    new-instance v0, Lcom/badlogic/gdx/utils/ArrayMap$Values;

    invoke-direct {v0, p0}, Lcom/badlogic/gdx/utils/ArrayMap$Values;-><init>(Lcom/badlogic/gdx/utils/ArrayMap;)V

    iput-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->valuesIter:Lcom/badlogic/gdx/utils/ArrayMap$Values;

    .line 411
    :goto_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->valuesIter:Lcom/badlogic/gdx/utils/ArrayMap$Values;

    return-object v0

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/badlogic/gdx/utils/ArrayMap;->valuesIter:Lcom/badlogic/gdx/utils/ArrayMap$Values;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/ArrayMap$Values;->reset()V

    goto :goto_0
.end method
