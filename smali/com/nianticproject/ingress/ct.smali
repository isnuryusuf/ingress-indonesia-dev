.class final Lcom/nianticproject/ingress/ct;
.super Lcom/nianticproject/ingress/common/x/a;
.source "SourceFile"


# instance fields
.field final synthetic a:F

.field final synthetic b:Lcom/nianticproject/ingress/cs;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/cs;Ljava/lang/String;F)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 194
    iput-object p1, p0, Lcom/nianticproject/ingress/ct;->b:Lcom/nianticproject/ingress/cs;

    iput p3, p0, Lcom/nianticproject/ingress/ct;->a:F

    invoke-direct {p0, p2}, Lcom/nianticproject/ingress/common/x/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/nianticproject/ingress/common/x/p;)Lcom/nianticproject/ingress/common/x/f;
    .locals 3
    .parameter

    .prologue
    .line 198
    iget-object v0, p0, Lcom/nianticproject/ingress/ct;->b:Lcom/nianticproject/ingress/cs;

    iget-object v0, v0, Lcom/nianticproject/ingress/cs;->a:Lcom/nianticproject/ingress/cq;

    invoke-static {v0}, Lcom/nianticproject/ingress/cq;->b(Lcom/nianticproject/ingress/cq;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 199
    :try_start_0
    iget-object v0, p0, Lcom/nianticproject/ingress/ct;->b:Lcom/nianticproject/ingress/cs;

    iget-object v0, v0, Lcom/nianticproject/ingress/cs;->a:Lcom/nianticproject/ingress/cq;

    invoke-static {v0}, Lcom/nianticproject/ingress/cq;->c(Lcom/nianticproject/ingress/cq;)Lcom/nianticproject/ingress/common/model/k;

    move-result-object v0

    .line 200
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    if-eqz v0, :cond_0

    .line 202
    iget v1, p0, Lcom/nianticproject/ingress/ct;->a:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/common/model/k;->a(F)V

    .line 204
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
