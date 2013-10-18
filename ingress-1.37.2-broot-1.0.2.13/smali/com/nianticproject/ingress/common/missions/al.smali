.class final Lcom/nianticproject/ingress/common/missions/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/x/f;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/w/d;

.field final synthetic b:Lcom/nianticproject/ingress/common/missions/af;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/missions/af;Lcom/nianticproject/ingress/common/w/d;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 299
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/al;->b:Lcom/nianticproject/ingress/common/missions/af;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/missions/al;->a:Lcom/nianticproject/ingress/common/w/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/x/p;)Lcom/nianticproject/ingress/common/x/f;
    .locals 3
    .parameter

    .prologue
    .line 303
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/al;->b:Lcom/nianticproject/ingress/common/missions/af;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/missions/af;->a(Lcom/nianticproject/ingress/common/missions/af;)Lcom/nianticproject/ingress/common/w/b;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/al;->a:Lcom/nianticproject/ingress/common/w/d;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/b;->a(Lcom/nianticproject/ingress/common/w/d;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    const/4 v0, 0x0

    return-object v0

    .line 304
    :catch_0
    move-exception v0

    .line 305
    invoke-static {}, Lcom/nianticproject/ingress/common/missions/af;->v()Lcom/nianticproject/ingress/common/w/aa;

    move-result-object v1

    const-string/jumbo v2, "Exception in TrainingMission scheduled event"

    invoke-virtual {v1, v0, v2}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 306
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final n_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    const-string/jumbo v0, "scheduleMissionEvent"

    return-object v0
.end method
