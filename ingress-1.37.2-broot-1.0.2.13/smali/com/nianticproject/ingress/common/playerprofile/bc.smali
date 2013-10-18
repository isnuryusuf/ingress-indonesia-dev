.class public final Lcom/nianticproject/ingress/common/playerprofile/bc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/playerprofile/ba;
.implements Lcom/nianticproject/ingress/common/playerprofile/bk;


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/playerprofile/ax;

.field private final b:Lcom/nianticproject/ingress/common/playerprofile/bi;

.field private final c:Lcom/nianticproject/ingress/common/playerprofile/bj;

.field private final d:Lcom/nianticproject/ingress/common/j/av;

.field private final e:Z

.field private final f:Z


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/playerprofile/ax;Lcom/nianticproject/ingress/common/playerprofile/bi;Lcom/nianticproject/ingress/common/playerprofile/bj;Lcom/nianticproject/ingress/common/j/av;ZZ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {p1}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/playerprofile/ax;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bc;->a:Lcom/nianticproject/ingress/common/playerprofile/ax;

    .line 48
    invoke-static {p2}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/playerprofile/bi;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bc;->b:Lcom/nianticproject/ingress/common/playerprofile/bi;

    .line 49
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/playerprofile/bj;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bc;->c:Lcom/nianticproject/ingress/common/playerprofile/bj;

    .line 50
    invoke-static {p4}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/j/av;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bc;->d:Lcom/nianticproject/ingress/common/j/av;

    .line 51
    iput-boolean p5, p0, Lcom/nianticproject/ingress/common/playerprofile/bc;->e:Z

    .line 52
    iput-boolean p6, p0, Lcom/nianticproject/ingress/common/playerprofile/bc;->f:Z

    .line 53
    invoke-interface {p3, p0}, Lcom/nianticproject/ingress/common/playerprofile/bj;->a(Lcom/nianticproject/ingress/common/playerprofile/bk;)V

    .line 54
    return-void
.end method

.method private b(Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;)V
    .locals 7
    .parameter

    .prologue
    .line 131
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->n()Lcom/nianticproject/ingress/common/ui/t;

    move-result-object v6

    new-instance v0, Lcom/nianticproject/ingress/common/playerprofile/ac;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/bc;->b:Lcom/nianticproject/ingress/common/playerprofile/bi;

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/playerprofile/bi;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/bc;->d:Lcom/nianticproject/ingress/common/j/av;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/playerprofile/bc;->a:Lcom/nianticproject/ingress/common/playerprofile/ax;

    iget-boolean v5, p0, Lcom/nianticproject/ingress/common/playerprofile/bc;->f:Z

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/nianticproject/ingress/common/playerprofile/ac;-><init>(Ljava/lang/String;Lcom/nianticproject/ingress/common/j/av;Lcom/nianticproject/ingress/common/playerprofile/ax;Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;Z)V

    invoke-virtual {v6, v0}, Lcom/nianticproject/ingress/common/ui/t;->b(Lcom/nianticproject/ingress/common/ui/m;)Lcom/nianticproject/ingress/common/ui/m;

    .line 133
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bc;->b:Lcom/nianticproject/ingress/common/playerprofile/bi;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/playerprofile/bi;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/nianticproject/ingress/common/playerprofile/bc;->a(Ljava/lang/String;Z)V

    .line 110
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;)V
    .locals 0
    .parameter

    .prologue
    .line 127
    invoke-direct {p0, p1}, Lcom/nianticproject/ingress/common/playerprofile/bc;->b(Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;)V

    .line 128
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/shared/rpc/q;)V
    .locals 2
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bc;->b:Lcom/nianticproject/ingress/common/playerprofile/bi;

    invoke-interface {v0, p1}, Lcom/nianticproject/ingress/common/playerprofile/bi;->a(Lcom/nianticproject/ingress/shared/rpc/q;)V

    .line 87
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bc;->c:Lcom/nianticproject/ingress/common/playerprofile/bj;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/bc;->b:Lcom/nianticproject/ingress/common/playerprofile/bi;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/playerprofile/bj;->a(Lcom/nianticproject/ingress/common/playerprofile/bi;)V

    .line 88
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/shared/rpc/q;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bc;->b:Lcom/nianticproject/ingress/common/playerprofile/bi;

    invoke-interface {v0, p1, p2}, Lcom/nianticproject/ingress/common/playerprofile/bi;->a(Lcom/nianticproject/ingress/shared/rpc/q;I)V

    .line 104
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bc;->c:Lcom/nianticproject/ingress/common/playerprofile/bj;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/bc;->b:Lcom/nianticproject/ingress/common/playerprofile/bi;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/playerprofile/bj;->a(Lcom/nianticproject/ingress/common/playerprofile/bi;)V

    .line 105
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;Lcom/nianticproject/ingress/common/playerprofile/j;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bc;->b:Lcom/nianticproject/ingress/common/playerprofile/bi;

    invoke-interface {v0, p2}, Lcom/nianticproject/ingress/common/playerprofile/bi;->a(Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;)V

    .line 76
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bc;->b:Lcom/nianticproject/ingress/common/playerprofile/bi;

    invoke-interface {v0, p3}, Lcom/nianticproject/ingress/common/playerprofile/bi;->a(Lcom/nianticproject/ingress/common/playerprofile/j;)V

    .line 77
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bc;->c:Lcom/nianticproject/ingress/common/playerprofile/bj;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/bc;->b:Lcom/nianticproject/ingress/common/playerprofile/bi;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/playerprofile/bj;->a(Lcom/nianticproject/ingress/common/playerprofile/bi;)V

    .line 78
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bc;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;->e()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 79
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bc;->a:Lcom/nianticproject/ingress/common/playerprofile/ax;

    invoke-virtual {p2}, Lcom/nianticproject/ingress/shared/playerprofile/PlayerProfile;->e()I

    move-result v1

    invoke-interface {v0, p1, v1, p0}, Lcom/nianticproject/ingress/common/playerprofile/ax;->a(Ljava/lang/String;ILcom/nianticproject/ingress/common/playerprofile/ba;)V

    .line 82
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;I)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;",
            ">;I)V"
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 93
    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/bc;->b:Lcom/nianticproject/ingress/common/playerprofile/bi;

    if-ne p3, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v1, p2, v0}, Lcom/nianticproject/ingress/common/playerprofile/bi;->a(Ljava/util/List;Z)V

    .line 94
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bc;->c:Lcom/nianticproject/ingress/common/playerprofile/bj;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/bc;->b:Lcom/nianticproject/ingress/common/playerprofile/bi;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/playerprofile/bj;->a(Lcom/nianticproject/ingress/common/playerprofile/bi;)V

    .line 95
    if-eq p3, v2, :cond_0

    .line 96
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bc;->a:Lcom/nianticproject/ingress/common/playerprofile/ax;

    invoke-interface {v0, p1, p3, p0}, Lcom/nianticproject/ingress/common/playerprofile/ax;->a(Ljava/lang/String;ILcom/nianticproject/ingress/common/playerprofile/ba;)V

    .line 98
    :cond_0
    return-void

    .line 93
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bc;->b:Lcom/nianticproject/ingress/common/playerprofile/bi;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/playerprofile/bi;->a()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 70
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bc;->b:Lcom/nianticproject/ingress/common/playerprofile/bi;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/playerprofile/bi;->c()V

    .line 68
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bc;->c:Lcom/nianticproject/ingress/common/playerprofile/bj;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/bc;->b:Lcom/nianticproject/ingress/common/playerprofile/bi;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/playerprofile/bj;->a(Lcom/nianticproject/ingress/common/playerprofile/bi;)V

    .line 69
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bc;->a:Lcom/nianticproject/ingress/common/playerprofile/ax;

    invoke-interface {v0, p1, p0}, Lcom/nianticproject/ingress/common/playerprofile/ax;->a(Ljava/lang/String;Lcom/nianticproject/ingress/common/playerprofile/ba;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/playerprofile/bc;->b(Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;)V

    .line 123
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 114
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bc;->b:Lcom/nianticproject/ingress/common/playerprofile/bi;

    invoke-interface {v0}, Lcom/nianticproject/ingress/common/playerprofile/bi;->i()V

    .line 115
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bc;->c:Lcom/nianticproject/ingress/common/playerprofile/bj;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/bc;->b:Lcom/nianticproject/ingress/common/playerprofile/bi;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/playerprofile/bj;->a(Lcom/nianticproject/ingress/common/playerprofile/bi;)V

    .line 116
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/bc;->a:Lcom/nianticproject/ingress/common/playerprofile/ax;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/bc;->b:Lcom/nianticproject/ingress/common/playerprofile/bi;

    invoke-interface {v1}, Lcom/nianticproject/ingress/common/playerprofile/bi;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/bc;->b:Lcom/nianticproject/ingress/common/playerprofile/bi;

    invoke-interface {v2}, Lcom/nianticproject/ingress/common/playerprofile/bi;->l()I

    move-result v2

    invoke-interface {v0, v1, v2, p0}, Lcom/nianticproject/ingress/common/playerprofile/ax;->a(Ljava/lang/String;ILcom/nianticproject/ingress/common/playerprofile/ba;)V

    .line 118
    return-void
.end method
