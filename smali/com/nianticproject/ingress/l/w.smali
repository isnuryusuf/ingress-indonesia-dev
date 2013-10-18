.class final Lcom/nianticproject/ingress/l/w;
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
    .line 237
    iput-object p1, p0, Lcom/nianticproject/ingress/l/w;->b:Lcom/nianticproject/ingress/l/u;

    iput-object p2, p0, Lcom/nianticproject/ingress/l/w;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 241
    :try_start_0
    const-string/jumbo v0, "MyLocationListener.onProviderEnabled("

    iget-object v1, p0, Lcom/nianticproject/ingress/l/w;->a:Ljava/lang/String;

    const-string/jumbo v2, ")"

    invoke-static {v0, v1, v2}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 244
    return-void

    .line 243
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method
