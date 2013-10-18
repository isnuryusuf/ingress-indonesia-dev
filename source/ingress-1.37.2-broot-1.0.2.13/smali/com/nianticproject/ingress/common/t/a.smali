.class final Lcom/nianticproject/ingress/common/t/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nianticproject/ingress/common/t/f;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:I

.field private d:Lcom/nianticproject/ingress/common/t/h;

.field private e:Lcom/nianticproject/ingress/common/t/g;


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x4

    invoke-static {v0}, Lcom/google/a/c/eq;->b(I)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/t/a;->a:Ljava/util/ArrayList;

    .line 33
    sget-boolean v0, Lcom/nianticproject/ingress/common/t/c;->a:Z

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/t/a;->b:Z

    .line 35
    new-instance v0, Lcom/nianticproject/ingress/common/t/h;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/t/h;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/t/a;->d:Lcom/nianticproject/ingress/common/t/h;

    .line 36
    new-instance v0, Lcom/nianticproject/ingress/common/t/g;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/t/g;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/t/a;->e:Lcom/nianticproject/ingress/common/t/g;

    .line 38
    iget-object v0, p0, Lcom/nianticproject/ingress/common/t/a;->a:Ljava/util/ArrayList;

    new-instance v1, Lcom/nianticproject/ingress/common/t/f;

    sget-object v2, Lcom/nianticproject/ingress/common/t/c;->b:Lcom/nianticproject/ingress/common/t/b;

    invoke-direct {v1, v2}, Lcom/nianticproject/ingress/common/t/f;-><init>(Lcom/nianticproject/ingress/common/t/b;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    return-void
.end method


# virtual methods
.method final a()V
    .locals 4

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/t/a;->b:Z

    if-nez v0, :cond_0

    .line 57
    iget v0, p0, Lcom/nianticproject/ingress/common/t/a;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/nianticproject/ingress/common/t/a;->c:I

    .line 67
    :goto_0
    return-void

    .line 59
    :cond_0
    iget v0, p0, Lcom/nianticproject/ingress/common/t/a;->c:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    const-string/jumbo v1, "Zone stack underflow"

    invoke-static {v0, v1}, Lcom/google/a/a/an;->b(ZLjava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lcom/nianticproject/ingress/common/t/a;->a:Ljava/util/ArrayList;

    iget v1, p0, Lcom/nianticproject/ingress/common/t/a;->c:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/nianticproject/ingress/common/t/a;->c:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/t/f;

    .line 63
    iget-object v1, p0, Lcom/nianticproject/ingress/common/t/a;->a:Ljava/util/ArrayList;

    iget v2, p0, Lcom/nianticproject/ingress/common/t/a;->c:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nianticproject/ingress/common/t/f;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/t/f;->a()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/nianticproject/ingress/common/t/f;->a(J)V

    .line 65
    iget-object v1, p0, Lcom/nianticproject/ingress/common/t/a;->d:Lcom/nianticproject/ingress/common/t/h;

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/t/h;->a(Lcom/nianticproject/ingress/common/t/f;)V

    goto :goto_0

    .line 59
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method final a(Lcom/nianticproject/ingress/common/t/b;)V
    .locals 2
    .parameter

    .prologue
    .line 42
    iget v0, p0, Lcom/nianticproject/ingress/common/t/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nianticproject/ingress/common/t/a;->c:I

    .line 45
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/t/a;->b:Z

    if-nez v0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v0, Lcom/nianticproject/ingress/common/t/f;

    invoke-direct {v0, p1}, Lcom/nianticproject/ingress/common/t/f;-><init>(Lcom/nianticproject/ingress/common/t/b;)V

    .line 52
    iget-object v1, p0, Lcom/nianticproject/ingress/common/t/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method final b()V
    .locals 4

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/t/a;->b:Z

    if-nez v0, :cond_0

    .line 84
    sget-boolean v0, Lcom/nianticproject/ingress/common/t/c;->a:Z

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/t/a;->b:Z

    .line 120
    :goto_0
    return-void

    .line 88
    :cond_0
    iget v0, p0, Lcom/nianticproject/ingress/common/t/a;->c:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    const-string/jumbo v1, "Updating counters while profiling active"

    invoke-static {v0, v1}, Lcom/google/a/a/an;->b(ZLjava/lang/Object;)V

    .line 91
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide v2, 0xdf8475800L

    sub-long/2addr v0, v2

    .line 95
    :goto_2
    iget-object v2, p0, Lcom/nianticproject/ingress/common/t/a;->e:Lcom/nianticproject/ingress/common/t/g;

    invoke-virtual {v2, v0, v1}, Lcom/nianticproject/ingress/common/t/g;->a(J)Lcom/nianticproject/ingress/common/t/f;

    move-result-object v2

    .line 96
    if-eqz v2, :cond_2

    .line 97
    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/t/f;->d()V

    goto :goto_2

    .line 88
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 104
    :cond_2
    :goto_3
    iget-object v2, p0, Lcom/nianticproject/ingress/common/t/a;->d:Lcom/nianticproject/ingress/common/t/h;

    invoke-virtual {v2, v0, v1}, Lcom/nianticproject/ingress/common/t/h;->a(J)Lcom/nianticproject/ingress/common/t/f;

    move-result-object v2

    .line 105
    if-eqz v2, :cond_3

    .line 106
    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/t/f;->c()V

    .line 109
    iget-object v3, p0, Lcom/nianticproject/ingress/common/t/a;->e:Lcom/nianticproject/ingress/common/t/g;

    invoke-virtual {v3, v2}, Lcom/nianticproject/ingress/common/t/g;->a(Lcom/nianticproject/ingress/common/t/f;)V

    goto :goto_3

    .line 111
    :cond_3
    iget-object v0, p0, Lcom/nianticproject/ingress/common/t/a;->d:Lcom/nianticproject/ingress/common/t/h;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/t/h;->a()V

    .line 115
    invoke-static {}, Lcom/nianticproject/ingress/common/t/c;->c()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/t/b;

    .line 116
    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/t/b;->g()V

    goto :goto_4

    .line 119
    :cond_4
    sget-boolean v0, Lcom/nianticproject/ingress/common/t/c;->a:Z

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/t/a;->b:Z

    goto :goto_0
.end method

.method final b(Lcom/nianticproject/ingress/common/t/b;)V
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/t/a;->b:Z

    if-eqz v0, :cond_0

    .line 71
    iget v0, p0, Lcom/nianticproject/ingress/common/t/a;->c:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->b(Z)V

    .line 74
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/t/a;->a()V

    .line 75
    invoke-virtual {p0, p1}, Lcom/nianticproject/ingress/common/t/a;->a(Lcom/nianticproject/ingress/common/t/b;)V

    .line 77
    :cond_0
    return-void

    .line 71
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
