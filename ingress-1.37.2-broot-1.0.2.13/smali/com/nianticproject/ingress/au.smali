.class public final Lcom/nianticproject/ingress/au;
.super Lcom/nianticproject/ingress/common/x/a;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    const-string/jumbo v0, "EnqueueBadgeUnlockDialog"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/x/a;-><init>(Ljava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/nianticproject/ingress/au;->a:Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/au;)Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/nianticproject/ingress/au;->a:Lcom/nianticproject/ingress/shared/playerprofile/DisplayedAchievement;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/x/p;)Lcom/nianticproject/ingress/common/x/f;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 42
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/p;->k()Lcom/nianticproject/ingress/common/scanner/k;

    move-result-object v0

    .line 43
    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nianticproject/ingress/common/g/p;->E()Lcom/nianticproject/ingress/common/playerprofile/ax;

    move-result-object v1

    .line 44
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 46
    :cond_0
    invoke-static {}, Lcom/nianticproject/ingress/common/x/i;->a()Lcom/nianticproject/ingress/common/x/i;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p0, v1, v2}, Lcom/nianticproject/ingress/common/x/i;->a(Lcom/nianticproject/ingress/common/x/f;J)V

    .line 65
    :goto_0
    return-object v3

    .line 50
    :cond_1
    new-instance v2, Lcom/nianticproject/ingress/av;

    invoke-direct {v2, p0}, Lcom/nianticproject/ingress/av;-><init>(Lcom/nianticproject/ingress/au;)V

    invoke-virtual {v0, v2}, Lcom/nianticproject/ingress/common/scanner/k;->a(Lcom/nianticproject/ingress/common/scanner/ev;)V

    .line 63
    invoke-static {}, Lcom/nianticproject/ingress/common/playerprofile/ak;->j()V

    .line 64
    invoke-interface {v1}, Lcom/nianticproject/ingress/common/playerprofile/ax;->a()V

    goto :goto_0
.end method
