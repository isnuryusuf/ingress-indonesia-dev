.class final Lcom/nianticproject/ingress/common/missions/cy;
.super Lcom/nianticproject/ingress/common/model/n;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/missions/cu;

.field private b:Z

.field private c:Z


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/cu;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 255
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/cy;->a:Lcom/nianticproject/ingress/common/missions/cu;

    invoke-direct {p0}, Lcom/nianticproject/ingress/common/model/n;-><init>()V

    .line 256
    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/missions/cy;->b:Z

    .line 257
    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/missions/cy;->c:Z

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 260
    const-string/jumbo v0, "XmTrainingMission:playerChangeListener"

    return-object v0
.end method

.method public final a(JJJLcom/nianticproject/ingress/common/model/z;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 265
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/missions/cy;->b:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x2ee

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    .line 266
    iput-boolean v2, p0, Lcom/nianticproject/ingress/common/missions/cy;->b:Z

    .line 267
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/cy;->a:Lcom/nianticproject/ingress/common/missions/cu;

    const-string/jumbo v1, "FirstXmCollected"

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/a/a;->a(Lcom/nianticproject/ingress/common/missions/ch;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/cy;->a:Lcom/nianticproject/ingress/common/missions/cu;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/missions/cu;->t()Lcom/nianticproject/ingress/common/w/b;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/cy;->a:Lcom/nianticproject/ingress/common/missions/cu;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/missions/cu;->d(Lcom/nianticproject/ingress/common/missions/cu;)Lcom/nianticproject/ingress/common/w/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/b;->a(Lcom/nianticproject/ingress/common/w/d;)V

    .line 271
    :cond_0
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/missions/cy;->c:Z

    if-nez v0, :cond_1

    const-wide/16 v0, 0x3e8

    cmp-long v0, p3, v0

    if-ltz v0, :cond_1

    .line 272
    iput-boolean v2, p0, Lcom/nianticproject/ingress/common/missions/cy;->c:Z

    .line 273
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/cy;->a:Lcom/nianticproject/ingress/common/missions/cu;

    iget-object v0, v0, Lcom/nianticproject/ingress/common/missions/cu;->k:Lcom/nianticproject/ingress/common/model/m;

    invoke-interface {v0, p0}, Lcom/nianticproject/ingress/common/model/m;->b(Lcom/nianticproject/ingress/common/model/l;)V

    .line 274
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/cy;->a:Lcom/nianticproject/ingress/common/missions/cu;

    const-string/jumbo v1, "AllXmCollected"

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/a/a;->a(Lcom/nianticproject/ingress/common/missions/ch;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/cy;->a:Lcom/nianticproject/ingress/common/missions/cu;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/missions/cu;->t()Lcom/nianticproject/ingress/common/w/b;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/cy;->a:Lcom/nianticproject/ingress/common/missions/cu;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/missions/cu;->e(Lcom/nianticproject/ingress/common/missions/cu;)Lcom/nianticproject/ingress/common/w/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/b;->a(Lcom/nianticproject/ingress/common/w/d;)V

    .line 277
    :cond_1
    return-void
.end method
