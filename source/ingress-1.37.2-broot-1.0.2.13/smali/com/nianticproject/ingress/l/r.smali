.class final Lcom/nianticproject/ingress/l/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/location/Location;

.field final synthetic b:Lcom/nianticproject/ingress/common/u/av;

.field final synthetic c:Lcom/nianticproject/ingress/l/q;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/l/q;Landroid/location/Location;Lcom/nianticproject/ingress/common/u/av;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/nianticproject/ingress/l/r;->c:Lcom/nianticproject/ingress/l/q;

    iput-object p2, p0, Lcom/nianticproject/ingress/l/r;->a:Landroid/location/Location;

    iput-object p3, p0, Lcom/nianticproject/ingress/l/r;->b:Lcom/nianticproject/ingress/common/u/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/nianticproject/ingress/l/r;->c:Lcom/nianticproject/ingress/l/q;

    invoke-static {v0}, Lcom/nianticproject/ingress/l/q;->a(Lcom/nianticproject/ingress/l/q;)Lcom/nianticproject/ingress/l/t;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/l/r;->a:Landroid/location/Location;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/l/t;->onLocationChanged(Landroid/location/Location;)V

    .line 206
    iget-object v0, p0, Lcom/nianticproject/ingress/l/r;->c:Lcom/nianticproject/ingress/l/q;

    invoke-static {v0}, Lcom/nianticproject/ingress/l/q;->a(Lcom/nianticproject/ingress/l/q;)Lcom/nianticproject/ingress/l/t;

    move-result-object v0

    iget-object v1, p0, Lcom/nianticproject/ingress/l/r;->b:Lcom/nianticproject/ingress/common/u/av;

    invoke-interface {v0, v1}, Lcom/nianticproject/ingress/l/t;->a(Lcom/nianticproject/ingress/common/u/av;)V

    .line 207
    return-void
.end method
