.class final Lcom/nianticproject/ingress/common/model/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/x/f;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/model/a/e;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/model/a/e;)V
    .locals 0
    .parameter

    .prologue
    .line 423
    iput-object p1, p0, Lcom/nianticproject/ingress/common/model/a/f;->a:Lcom/nianticproject/ingress/common/model/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/x/p;)Lcom/nianticproject/ingress/common/x/f;
    .locals 4
    .parameter

    .prologue
    .line 426
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/a/f;->a:Lcom/nianticproject/ingress/common/model/a/e;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/model/a/e;->c(Lcom/nianticproject/ingress/common/model/a/e;)Lcom/google/a/a/bw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/a/bw;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/nianticproject/ingress/common/model/a/f;->a:Lcom/nianticproject/ingress/common/model/a/e;

    invoke-static {v2}, Lcom/nianticproject/ingress/common/model/a/e;->d(Lcom/nianticproject/ingress/common/model/a/e;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide v2, 0x12a05f200L

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/nianticproject/ingress/common/model/a/f;->a:Lcom/nianticproject/ingress/common/model/a/e;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/model/a/e;->e(Lcom/nianticproject/ingress/common/model/a/e;)V

    .line 429
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final n_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 434
    const-string/jumbo v0, "PlayerStorage.scheduleCommit"

    return-object v0
.end method
