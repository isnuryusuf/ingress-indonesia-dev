.class public final Lcom/nianticproject/ingress/common/w/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/a/c/kr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/a/c/kr",
            "<",
            "Lcom/nianticproject/ingress/common/w/h;",
            "Lcom/nianticproject/ingress/common/w/d;",
            "Lcom/nianticproject/ingress/common/w/h;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Lcom/nianticproject/ingress/common/w/h;

.field private d:Lcom/nianticproject/ingress/common/w/h;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    invoke-static {}, Lcom/google/a/c/bw;->j()Lcom/google/a/c/bw;

    move-result-object v0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/w/c;->a:Lcom/google/a/c/kr;

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/w/c;->b:Z

    .line 119
    new-instance v0, Lcom/nianticproject/ingress/common/w/e;

    invoke-direct {v0}, Lcom/nianticproject/ingress/common/w/e;-><init>()V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/w/c;->d:Lcom/nianticproject/ingress/common/w/h;

    .line 125
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/w/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/common/w/c;
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/w/c;->b:Z

    .line 137
    return-object p0
.end method

.method public final a(Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;
    .locals 0
    .parameter

    .prologue
    .line 147
    iput-object p1, p0, Lcom/nianticproject/ingress/common/w/c;->c:Lcom/nianticproject/ingress/common/w/h;

    .line 148
    return-object p0
.end method

.method public final a(Lcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/d;Lcom/nianticproject/ingress/common/w/h;)Lcom/nianticproject/ingress/common/w/c;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 172
    iget-object v0, p0, Lcom/nianticproject/ingress/common/w/c;->a:Lcom/google/a/c/kr;

    invoke-interface {v0, p1, p2}, Lcom/google/a/c/kr;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    const-string/jumbo v3, "transition already defined for state=%s event=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    aput-object p2, v4, v1

    invoke-static {v0, v3, v4}, Lcom/google/a/a/an;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 174
    iget-object v0, p0, Lcom/nianticproject/ingress/common/w/c;->a:Lcom/google/a/c/kr;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/a/c/kr;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    return-object p0

    :cond_0
    move v0, v2

    .line 172
    goto :goto_0
.end method

.method public final b()Lcom/nianticproject/ingress/common/w/b;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 184
    iget-object v0, p0, Lcom/nianticproject/ingress/common/w/c;->c:Lcom/nianticproject/ingress/common/w/h;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->b(Z)V

    .line 185
    iget-object v0, p0, Lcom/nianticproject/ingress/common/w/c;->d:Lcom/nianticproject/ingress/common/w/h;

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/google/a/a/an;->b(Z)V

    .line 186
    iget-object v0, p0, Lcom/nianticproject/ingress/common/w/c;->a:Lcom/google/a/c/kr;

    invoke-interface {v0}, Lcom/google/a/c/kr;->l()I

    move-result v0

    if-lez v0, :cond_2

    :goto_2
    invoke-static {v1}, Lcom/google/a/a/an;->b(Z)V

    .line 187
    new-instance v0, Lcom/nianticproject/ingress/common/w/b;

    iget-boolean v1, p0, Lcom/nianticproject/ingress/common/w/c;->b:Z

    iget-object v2, p0, Lcom/nianticproject/ingress/common/w/c;->c:Lcom/nianticproject/ingress/common/w/h;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/w/c;->d:Lcom/nianticproject/ingress/common/w/h;

    iget-object v4, p0, Lcom/nianticproject/ingress/common/w/c;->a:Lcom/google/a/c/kr;

    invoke-static {v4}, Lcom/google/a/c/ec;->a(Lcom/google/a/c/kr;)Lcom/google/a/c/ec;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/w/b;-><init>(ZLcom/nianticproject/ingress/common/w/h;Lcom/nianticproject/ingress/common/w/h;Lcom/google/a/c/ec;B)V

    return-object v0

    :cond_0
    move v0, v5

    .line 184
    goto :goto_0

    :cond_1
    move v0, v5

    .line 185
    goto :goto_1

    :cond_2
    move v1, v5

    .line 186
    goto :goto_2
.end method

.method public final c()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/nianticproject/ingress/common/w/h;",
            ">;"
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lcom/nianticproject/ingress/common/w/c;->a:Lcom/google/a/c/kr;

    invoke-interface {v0}, Lcom/google/a/c/kr;->a()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/a/c/jc;->a(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lcom/nianticproject/ingress/common/w/c;->a:Lcom/google/a/c/kr;

    invoke-interface {v1}, Lcom/google/a/c/kr;->g()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 197
    iget-object v1, p0, Lcom/nianticproject/ingress/common/w/c;->c:Lcom/nianticproject/ingress/common/w/h;

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/nianticproject/ingress/common/w/c;->c:Lcom/nianticproject/ingress/common/w/h;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_0
    iget-object v1, p0, Lcom/nianticproject/ingress/common/w/c;->d:Lcom/nianticproject/ingress/common/w/h;

    if-eqz v1, :cond_1

    .line 201
    iget-object v1, p0, Lcom/nianticproject/ingress/common/w/c;->d:Lcom/nianticproject/ingress/common/w/h;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 203
    :cond_1
    return-object v0
.end method
