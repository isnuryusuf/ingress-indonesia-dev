.class final Lcom/nianticproject/ingress/common/missions/fg;
.super Lcom/nianticproject/ingress/common/model/n;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/fc;

.field private b:Z


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/fc;)V
    .locals 1
    .parameter

    .prologue
    .line 294
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/fg;->a:Lcom/nianticproject/ingress/common/missions/fc;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/model/n;-><init>()V

    .line 295
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/missions/fg;->b:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    const-string/jumbo v0, "XmTrainingMission:playerChangeListener"

    return-object v0
.end method

.method public final a(JJJLcom/nianticproject/ingress/common/model/z;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/missions/fg;->b:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x3e8

    cmp-long v0, p3, v0

    if-ltz v0, :cond_0

    .line 304
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/missions/fg;->b:Z

    .line 305
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/fg;->a:Lcom/nianticproject/ingress/common/missions/fc;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/fc;->k:Lcom/nianticproject/ingress/common/model/m;

    invoke-interface {v0, p0}, Lcom/nianticproject/ingress/common/model/m;->b(Lcom/nianticproject/ingress/common/model/l;)V

    .line 306
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/fg;->a:Lcom/nianticproject/ingress/common/missions/fc;

    const-string/jumbo v1, "AllXmCollected"

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/a/a;->a(Lcom/nianticproject/ingress/common/missions/ch;Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/fg;->a:Lcom/nianticproject/ingress/common/missions/fc;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/missions/fc;->t()Lcom/nianticproject/ingress/common/w/b;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/fg;->a:Lcom/nianticproject/ingress/common/missions/fc;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/missions/fc;->d(Lcom/nianticproject/ingress/common/missions/fc;)Lcom/nianticproject/ingress/common/w/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/b;->a(Lcom/nianticproject/ingress/common/w/d;)V

    .line 309
    :cond_0
    return-void
.end method
