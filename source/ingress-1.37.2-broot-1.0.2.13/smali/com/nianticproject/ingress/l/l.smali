.class final Lcom/nianticproject/ingress/l/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/l/f;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/l/f;)V
    .locals 0
    .parameter

    .prologue
    .line 485
    iput-object p1, p0, Lcom/nianticproject/ingress/l/l;->a:Lcom/nianticproject/ingress/l/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 489
    :try_start_0
    const-string/jumbo v0, "LocationTracker.LocationTracker"

    invoke-static {v0}, Lcom/nianticproject/ingress/shared/aj;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    .line 492
    return-void

    .line 491
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/nianticproject/ingress/shared/aj;->b()V

    throw v0
.end method
