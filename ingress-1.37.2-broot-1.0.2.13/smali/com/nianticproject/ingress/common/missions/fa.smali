.class final Lcom/nianticproject/ingress/common/missions/fa;
.super Lcom/nianticproject/ingress/common/model/n;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/eu;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/eu;)V
    .locals 0
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/fa;->a:Lcom/nianticproject/ingress/common/missions/eu;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/model/n;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    const-string/jumbo v0, "WalkToPortalAndHackTrainingMission:playerChangeListener"

    return-object v0
.end method

.method public final a(Lcom/nianticproject/ingress/common/ad;)V
    .locals 4
    .parameter

    .prologue
    .line 287
    invoke-virtual {p1}, Lcom/nianticproject/ingress/common/ad;->a()Lcom/google/a/d/u;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/fa;->a:Lcom/nianticproject/ingress/common/missions/eu;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/missions/eu;->b:Lcom/nianticproject/ingress/common/missions/ac;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/missions/ac;->a:Lcom/google/a/d/u;

    invoke-virtual {v0, v1}, Lcom/google/a/d/u;->a(Lcom/google/a/d/u;)D

    move-result-wide v0

    const-wide/high16 v2, 0x4044

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/fa;->a:Lcom/nianticproject/ingress/common/missions/eu;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/eu;->k:Lcom/nianticproject/ingress/common/model/m;

    invoke-interface {v0, p0}, Lcom/nianticproject/ingress/common/model/m;->b(Lcom/nianticproject/ingress/common/model/l;)V

    .line 290
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/fa;->a:Lcom/nianticproject/ingress/common/missions/eu;

    const-string/jumbo v1, "WalkedToPortal"

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/a/a;->a(Lcom/nianticproject/ingress/common/missions/ch;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/fa;->a:Lcom/nianticproject/ingress/common/missions/eu;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/missions/eu;->t()Lcom/nianticproject/ingress/common/w/b;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/fa;->a:Lcom/nianticproject/ingress/common/missions/eu;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/missions/eu;->f(Lcom/nianticproject/ingress/common/missions/eu;)Lcom/nianticproject/ingress/common/w/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/b;->a(Lcom/nianticproject/ingress/common/w/d;)V

    .line 293
    :cond_0
    return-void
.end method
