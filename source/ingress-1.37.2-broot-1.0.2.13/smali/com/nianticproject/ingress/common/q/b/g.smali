.class public Lcom/nianticproject/ingress/common/q/b/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/q/b/e;


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nianticproject/ingress/common/q/c;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nianticproject/ingress/common/q/d;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/q/b/g;->a:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/q/b/g;->b:Ljava/util/ArrayList;

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/nianticproject/ingress/common/q/b/g;->c:I

    .line 46
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final a(I)Lcom/nianticproject/ingress/common/q/c;
    .locals 1
    .parameter

    .prologue
    .line 142
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/q/c;

    return-object v0
.end method

.method public final a(Lcom/nianticproject/ingress/common/q/c;)V
    .locals 3
    .parameter

    .prologue
    .line 150
    iget-object v1, p0, Lcom/nianticproject/ingress/common/q/b/g;->a:Ljava/util/ArrayList;

    monitor-enter v1

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/g;->b:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final a(Ljava/io/DataInput;)V
    .locals 10
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 75
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v0

    .line 76
    const/16 v1, 0x6c

    if-eq v0, v1, :cond_0

    .line 77
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 80
    :cond_0
    invoke-static {p1}, Lcom/google/c/a/a/b/e;->a(Ljava/io/DataInput;)Ljava/io/InputStream;

    move-result-object v4

    .line 82
    :try_start_0
    new-instance v0, Lcom/google/c/a/a/b/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/c/a/a/b/a;-><init>(Lcom/google/c/a/a/b/c;)V

    sget-object v1, Lcom/google/i/a/a/a/o;->g:Lcom/google/c/a/a/b/c;

    invoke-static {v1, v4, v0}, Lcom/google/c/a/a/b/e;->a(Lcom/google/c/a/a/b/c;Ljava/io/InputStream;Lcom/google/c/a/a/b/a;)I

    move-result v1

    if-eq v1, v3, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Missing header."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    :try_start_1
    iget-object v1, p0, Lcom/nianticproject/ingress/common/q/b/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 113
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    throw v0

    .line 82
    :cond_1
    const/4 v1, 0x1

    :try_start_2
    invoke-virtual {v0, v1}, Lcom/google/c/a/a/b/a;->b(I)I

    move-result v1

    iput v1, p0, Lcom/nianticproject/ingress/common/q/b/g;->c:I

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/c/a/a/b/a;->b(I)I

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Tile fetch error."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_2
    const/4 v0, 0x0

    move v3, v0

    .line 86
    :goto_0
    new-instance v5, Lcom/google/c/a/a/b/a;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Lcom/google/c/a/a/b/a;-><init>(Lcom/google/c/a/a/b/c;)V

    .line 87
    sget-object v0, Lcom/google/i/a/a/a/o;->g:Lcom/google/c/a/a/b/c;

    invoke-static {v0, v4, v5}, Lcom/google/c/a/a/b/e;->a(Lcom/google/c/a/a/b/c;Ljava/io/InputStream;Lcom/google/c/a/a/b/a;)I

    move-result v0

    .line 89
    if-eq v0, v2, :cond_5

    .line 90
    invoke-virtual {v5}, Lcom/google/c/a/a/b/a;->b()Lcom/google/c/a/a/b/a;

    move-result-object v0

    .line 94
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/c/a/a/b/a;->b(I)I

    move-result v6

    .line 95
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/c/a/a/b/a;->b(I)I

    move-result v7

    .line 96
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/c/a/a/b/a;->b(I)I

    move-result v8

    .line 97
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/c/a/a/b/a;->c(I)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/c/a/a/b/a;->b(I)I

    move-result v0

    move v1, v0

    .line 100
    :goto_1
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/q/c;

    .line 101
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/q/c;->b()I

    move-result v9

    if-eq v9, v6, :cond_4

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/q/c;->c()I

    move-result v6

    if-eq v6, v7, :cond_4

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/q/c;->a()I

    move-result v6

    if-eq v6, v8, :cond_4

    .line 102
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Tile mismatch in response"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v1, v2

    .line 97
    goto :goto_1

    .line 105
    :cond_4
    invoke-virtual {v5}, Lcom/google/c/a/a/b/a;->a()[B

    move-result-object v5

    .line 107
    new-instance v6, Lcom/nianticproject/ingress/common/q/d;

    invoke-direct {v6, v0, v1, v5}, Lcom/nianticproject/ingress/common/q/d;-><init>(Lcom/nianticproject/ingress/common/q/c;I[B)V

    .line 108
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 109
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    .line 110
    goto :goto_0

    .line 115
    :cond_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 116
    return-void
.end method

.method public final a(Ljava/io/DataOutput;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 50
    new-instance v0, Lcom/google/c/a/a/b/a;

    sget-object v1, Lcom/google/i/a/a/a/o;->c:Lcom/google/c/a/a/b/c;

    invoke-direct {v0, v1}, Lcom/google/c/a/a/b/a;-><init>(Lcom/google/c/a/a/b/c;)V

    .line 51
    new-instance v1, Lcom/google/c/a/a/b/a;

    sget-object v2, Lcom/google/i/a/a/a/o;->d:Lcom/google/c/a/a/b/c;

    invoke-direct {v1, v2}, Lcom/google/c/a/a/b/a;-><init>(Lcom/google/c/a/a/b/c;)V

    .line 53
    const/16 v2, 0x100

    invoke-virtual {v0, v6, v2}, Lcom/google/c/a/a/b/a;->a(II)V

    .line 54
    invoke-virtual {v0, v8, v7}, Lcom/google/c/a/a/b/a;->a(II)V

    .line 55
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/c/a/a/b/a;->a(I)V

    .line 56
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Lcom/google/c/a/a/b/a;->a(I)V

    .line 58
    invoke-virtual {v1, v6, v0}, Lcom/google/c/a/a/b/a;->a(ILcom/google/c/a/a/b/a;)V

    .line 60
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/g;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/q/c;

    .line 61
    new-instance v3, Lcom/google/c/a/a/b/a;

    sget-object v4, Lcom/google/i/a/a/a/g;->i:Lcom/google/c/a/a/b/c;

    invoke-direct {v3, v4}, Lcom/google/c/a/a/b/a;-><init>(Lcom/google/c/a/a/b/c;)V

    .line 62
    const/16 v4, 0xa

    invoke-virtual {v3, v6, v4}, Lcom/google/c/a/a/b/a;->a(II)V

    .line 63
    const/4 v4, 0x2

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/q/c;->b()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/google/c/a/a/b/a;->a(II)V

    .line 64
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/q/c;->c()I

    move-result v4

    invoke-virtual {v3, v7, v4}, Lcom/google/c/a/a/b/a;->a(II)V

    .line 65
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/q/c;->a()I

    move-result v0

    invoke-virtual {v3, v8, v0}, Lcom/google/c/a/a/b/a;->a(II)V

    .line 66
    invoke-virtual {v1, v3}, Lcom/google/c/a/a/b/a;->a(Lcom/google/c/a/a/b/a;)V

    goto :goto_0

    .line 69
    :cond_0
    const/16 v0, 0x6c

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 70
    invoke-static {p1, v1}, Lcom/google/c/a/a/b/e;->a(Ljava/io/DataOutput;Lcom/google/c/a/a/b/a;)V

    .line 71
    return-void
.end method

.method public final b(I)Lcom/nianticproject/ingress/common/q/d;
    .locals 1
    .parameter

    .prologue
    .line 146
    iget-object v0, p0, Lcom/nianticproject/ingress/common/q/b/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/q/d;

    return-object v0
.end method
