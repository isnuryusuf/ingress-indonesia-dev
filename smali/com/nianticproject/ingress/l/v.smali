.class final Lcom/nianticproject/ingress/l/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/nianticproject/ingress/l/u;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/l/u;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/nianticproject/ingress/l/v;->b:Lcom/nianticproject/ingress/l/u;

    iput-object p2, p0, Lcom/nianticproject/ingress/l/v;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 223
    iget-object v0, p0, Lcom/nianticproject/ingress/l/v;->b:Lcom/nianticproject/ingress/l/u;

    iget-object v0, v0, Lcom/nianticproject/ingress/l/u;->b:Lcom/nianticproject/ingress/l/f;

    invoke-static {v0}, Lcom/nianticproject/ingress/l/f;->b(Lcom/nianticproject/ingress/l/f;)Ljava/util/EnumMap;

    move-result-object v1

    monitor-enter v1

    .line 225
    :try_start_0
    const-string/jumbo v0, "MyLocationListener.onProviderDisabled("

    iget-object v2, p0, Lcom/nianticproject/ingress/l/v;->a:Ljava/lang/String;

    const-string/jumbo v3, ")"

    invoke-static {v0, v2, v3}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/nianticproject/ingress/l/v;->b:Lcom/nianticproject/ingress/l/u;

    iget-object v0, v0, Lcom/nianticproject/ingress/l/u;->b:Lcom/nianticproject/ingress/l/f;

    invoke-static {v0}, Lcom/nianticproject/ingress/l/f;->b(Lcom/nianticproject/ingress/l/f;)Ljava/util/EnumMap;

    move-result-object v0

    iget-object v2, p0, Lcom/nianticproject/ingress/l/v;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    :try_start_1
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 230
    monitor-exit v1

    return-void

    .line 228
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 230
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method
