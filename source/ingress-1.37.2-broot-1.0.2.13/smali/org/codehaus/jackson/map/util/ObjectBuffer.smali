.class public final Lorg/codehaus/jackson/map/util/ObjectBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private _bufferHead:Lorg/codehaus/jackson/map/util/ObjectBuffer$Node;

.field private _bufferTail:Lorg/codehaus/jackson/map/util/ObjectBuffer$Node;

.field private _bufferedEntryCount:I

.field private _freeBuffer:[Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected final _copyTo(Ljava/lang/Object;I[Ljava/lang/Object;I)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 206
    .line 208
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/ObjectBuffer;->_bufferHead:Lorg/codehaus/jackson/map/util/ObjectBuffer$Node;

    move v1, v2

    :goto_0
    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/util/ObjectBuffer$Node;->getData()[Ljava/lang/Object;

    move-result-object v3

    .line 210
    array-length v4, v3

    .line 211
    invoke-static {v3, v2, p1, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    add-int/2addr v1, v4

    .line 208
    invoke-virtual {v0}, Lorg/codehaus/jackson/map/util/ObjectBuffer$Node;->next()Lorg/codehaus/jackson/map/util/ObjectBuffer$Node;

    move-result-object v0

    goto :goto_0

    .line 214
    :cond_0
    invoke-static {p3, v2, p1, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 215
    add-int v0, v1, p4

    .line 218
    if-eq v0, p2, :cond_1

    .line 219
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Should have gotten "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " entries, got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 221
    :cond_1
    return-void
.end method

.method protected final _reset()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/ObjectBuffer;->_bufferTail:Lorg/codehaus/jackson/map/util/ObjectBuffer$Node;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/ObjectBuffer;->_bufferTail:Lorg/codehaus/jackson/map/util/ObjectBuffer$Node;

    invoke-virtual {v0}, Lorg/codehaus/jackson/map/util/ObjectBuffer$Node;->getData()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/codehaus/jackson/map/util/ObjectBuffer;->_freeBuffer:[Ljava/lang/Object;

    .line 199
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/map/util/ObjectBuffer;->_bufferTail:Lorg/codehaus/jackson/map/util/ObjectBuffer$Node;

    iput-object v0, p0, Lorg/codehaus/jackson/map/util/ObjectBuffer;->_bufferHead:Lorg/codehaus/jackson/map/util/ObjectBuffer$Node;

    .line 200
    const/4 v0, 0x0

    iput v0, p0, Lorg/codehaus/jackson/map/util/ObjectBuffer;->_bufferedEntryCount:I

    .line 201
    return-void
.end method

.method public final appendCompletedChunk([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .parameter

    .prologue
    .line 96
    new-instance v0, Lorg/codehaus/jackson/map/util/ObjectBuffer$Node;

    invoke-direct {v0, p1}, Lorg/codehaus/jackson/map/util/ObjectBuffer$Node;-><init>([Ljava/lang/Object;)V

    .line 97
    iget-object v1, p0, Lorg/codehaus/jackson/map/util/ObjectBuffer;->_bufferHead:Lorg/codehaus/jackson/map/util/ObjectBuffer$Node;

    if-nez v1, :cond_0

    .line 98
    iput-object v0, p0, Lorg/codehaus/jackson/map/util/ObjectBuffer;->_bufferTail:Lorg/codehaus/jackson/map/util/ObjectBuffer$Node;

    iput-object v0, p0, Lorg/codehaus/jackson/map/util/ObjectBuffer;->_bufferHead:Lorg/codehaus/jackson/map/util/ObjectBuffer$Node;

    .line 103
    :goto_0
    array-length v0, p1

    .line 104
    iget v1, p0, Lorg/codehaus/jackson/map/util/ObjectBuffer;->_bufferedEntryCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/codehaus/jackson/map/util/ObjectBuffer;->_bufferedEntryCount:I

    .line 106
    const/16 v1, 0x4000

    if-ge v0, v1, :cond_1

    .line 107
    add-int/2addr v0, v0

    .line 111
    :goto_1
    new-array v0, v0, [Ljava/lang/Object;

    return-object v0

    .line 100
    :cond_0
    iget-object v1, p0, Lorg/codehaus/jackson/map/util/ObjectBuffer;->_bufferTail:Lorg/codehaus/jackson/map/util/ObjectBuffer$Node;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/map/util/ObjectBuffer$Node;->linkNext(Lorg/codehaus/jackson/map/util/ObjectBuffer$Node;)V

    .line 101
    iput-object v0, p0, Lorg/codehaus/jackson/map/util/ObjectBuffer;->_bufferTail:Lorg/codehaus/jackson/map/util/ObjectBuffer$Node;

    goto :goto_0

    .line 109
    :cond_1
    shr-int/lit8 v1, v0, 0x2

    add-int/2addr v0, v1

    goto :goto_1
.end method

.method public final completeAndClearBuffer([Ljava/lang/Object;ILjava/util/List;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 157
    iget-object v1, p0, Lorg/codehaus/jackson/map/util/ObjectBuffer;->_bufferHead:Lorg/codehaus/jackson/map/util/ObjectBuffer$Node;

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_1

    .line 158
    invoke-virtual {v2}, Lorg/codehaus/jackson/map/util/ObjectBuffer$Node;->getData()[Ljava/lang/Object;

    move-result-object v3

    .line 159
    array-length v4, v3

    move v1, v0

    :goto_1
    if-ge v1, v4, :cond_0

    .line 160
    aget-object v5, v3, v1

    invoke-interface {p3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 157
    :cond_0
    invoke-virtual {v2}, Lorg/codehaus/jackson/map/util/ObjectBuffer$Node;->next()Lorg/codehaus/jackson/map/util/ObjectBuffer$Node;

    move-result-object v1

    move-object v2, v1

    goto :goto_0

    .line 164
    :cond_1
    :goto_2
    if-ge v0, p2, :cond_2

    .line 165
    aget-object v1, p1, v0

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 167
    :cond_2
    return-void
.end method

.method public final completeAndClearBuffer([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 126
    iget v0, p0, Lorg/codehaus/jackson/map/util/ObjectBuffer;->_bufferedEntryCount:I

    add-int/2addr v0, p2

    .line 127
    new-array v1, v0, [Ljava/lang/Object;

    .line 128
    invoke-virtual {p0, v1, v0, p1, p2}, Lorg/codehaus/jackson/map/util/ObjectBuffer;->_copyTo(Ljava/lang/Object;I[Ljava/lang/Object;I)V

    .line 129
    return-object v1
.end method

.method public final completeAndClearBuffer([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 142
    iget v0, p0, Lorg/codehaus/jackson/map/util/ObjectBuffer;->_bufferedEntryCount:I

    add-int v1, p2, v0

    .line 144
    invoke-static {p3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 145
    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/codehaus/jackson/map/util/ObjectBuffer;->_copyTo(Ljava/lang/Object;I[Ljava/lang/Object;I)V

    .line 146
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/util/ObjectBuffer;->_reset()V

    .line 147
    return-object v0
.end method

.method public final initialCapacity()I
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/ObjectBuffer;->_freeBuffer:[Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/ObjectBuffer;->_freeBuffer:[Ljava/lang/Object;

    array-length v0, v0

    goto :goto_0
.end method

.method public final resetAndStart()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 73
    invoke-virtual {p0}, Lorg/codehaus/jackson/map/util/ObjectBuffer;->_reset()V

    .line 74
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/ObjectBuffer;->_freeBuffer:[Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 75
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    .line 77
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/map/util/ObjectBuffer;->_freeBuffer:[Ljava/lang/Object;

    goto :goto_0
.end method
