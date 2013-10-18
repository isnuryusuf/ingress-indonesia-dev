.class public final Lcom/nianticproject/ingress/common/playerprofile/ac;
.super Lcom/nianticproject/ingress/common/ui/a;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/playerprofile/ab;


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/j/av;

.field private final b:Lcom/nianticproject/ingress/common/playerprofile/bi;

.field private final c:Lcom/nianticproject/ingress/common/playerprofile/ap;

.field private final d:Lcom/nianticproject/ingress/common/playerprofile/bc;

.field private final e:Lcom/nianticproject/ingress/common/playerprofile/ax;

.field private final f:Ljava/lang/String;

.field private g:Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/nianticproject/ingress/common/j/av;Lcom/nianticproject/ingress/common/playerprofile/ax;Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;Z)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 48
    const-string/jumbo v0, "BadgesActivity"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/ui/a;-><init>(Ljava/lang/String;)V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ac;->g:Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;

    .line 49
    iput-object p2, p0, Lcom/nianticproject/ingress/common/playerprofile/ac;->a:Lcom/nianticproject/ingress/common/j/av;

    .line 50
    invoke-static {p1}, Lcom/google/a/a/br;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v5

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 51
    iput-object p1, p0, Lcom/nianticproject/ingress/common/playerprofile/ac;->f:Ljava/lang/String;

    .line 53
    invoke-static {p3}, Lcom/google/a/a/an;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nianticproject/ingress/common/playerprofile/ax;

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ac;->e:Lcom/nianticproject/ingress/common/playerprofile/ax;

    .line 54
    new-instance v0, Lcom/nianticproject/ingress/common/playerprofile/ae;

    invoke-direct {v0, p1}, Lcom/nianticproject/ingress/common/playerprofile/ae;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ac;->b:Lcom/nianticproject/ingress/common/playerprofile/bi;

    .line 55
    new-instance v0, Lcom/nianticproject/ingress/common/playerprofile/ap;

    invoke-direct {v0, p0, p4, p2, p5}, Lcom/nianticproject/ingress/common/playerprofile/ap;-><init>(Lcom/nianticproject/ingress/common/playerprofile/ab;Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;Lcom/nianticproject/ingress/common/j/av;Z)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ac;->c:Lcom/nianticproject/ingress/common/playerprofile/ap;

    .line 57
    new-instance v0, Lcom/nianticproject/ingress/common/playerprofile/bc;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/ac;->e:Lcom/nianticproject/ingress/common/playerprofile/ax;

    iget-object v2, p0, Lcom/nianticproject/ingress/common/playerprofile/ac;->b:Lcom/nianticproject/ingress/common/playerprofile/bi;

    iget-object v3, p0, Lcom/nianticproject/ingress/common/playerprofile/ac;->c:Lcom/nianticproject/ingress/common/playerprofile/ap;

    move-object v4, p2

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/nianticproject/ingress/common/playerprofile/bc;-><init>(Lcom/nianticproject/ingress/common/playerprofile/ax;Lcom/nianticproject/ingress/common/playerprofile/bi;Lcom/nianticproject/ingress/common/playerprofile/bj;Lcom/nianticproject/ingress/common/j/av;ZZ)V

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ac;->d:Lcom/nianticproject/ingress/common/playerprofile/bc;

    .line 59
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/playerprofile/ac;->K()Lcom/nianticproject/ingress/common/ui/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/ac;->c:Lcom/nianticproject/ingress/common/playerprofile/ap;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/ad;->a(Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 60
    return-void

    .line 50
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/playerprofile/ac;)Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;
    .locals 1
    .parameter

    .prologue
    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ac;->g:Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;

    return-object v0
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/playerprofile/ac;)Lcom/nianticproject/ingress/common/playerprofile/ap;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ac;->c:Lcom/nianticproject/ingress/common/playerprofile/ap;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 65
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GLCommon;

    const/high16 v1, 0x3f80

    invoke-interface {v0, v2, v2, v2, v1}, Lcom/badlogic/gdx/graphics/GLCommon;->glClearColor(FFFF)V

    .line 67
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ac;->d:Lcom/nianticproject/ingress/common/playerprofile/bc;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/ac;->f:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nianticproject/ingress/common/playerprofile/bc;->a(Ljava/lang/String;Z)V

    .line 68
    return-void
.end method

.method public final a(Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;)V
    .locals 2
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/ac;->g:Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;

    if-ne v0, p1, :cond_0

    .line 100
    :goto_0
    return-void

    .line 86
    :cond_0
    iput-object p1, p0, Lcom/nianticproject/ingress/common/playerprofile/ac;->g:Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;

    .line 87
    new-instance v0, Lcom/nianticproject/ingress/common/playerprofile/BadgeDetailsDialog;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/ac;->a:Lcom/nianticproject/ingress/common/j/av;

    invoke-direct {v0, p1, v1}, Lcom/nianticproject/ingress/common/playerprofile/BadgeDetailsDialog;-><init>(Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;Lcom/nianticproject/ingress/common/j/av;)V

    .line 88
    new-instance v1, Lcom/nianticproject/ingress/common/playerprofile/ad;

    invoke-direct {v1, p0}, Lcom/nianticproject/ingress/common/playerprofile/ad;-><init>(Lcom/nianticproject/ingress/common/playerprofile/ac;)V

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;->a(Lcom/nianticproject/ingress/common/ui/elements/aa;)V

    .line 99
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/playerprofile/ac;->K()Lcom/nianticproject/ingress/common/ui/ad;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/ui/ad;->a(Lcom/nianticproject/ingress/common/ui/ac;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    const-string/jumbo v0, "BadgesActivity"

    return-object v0
.end method
