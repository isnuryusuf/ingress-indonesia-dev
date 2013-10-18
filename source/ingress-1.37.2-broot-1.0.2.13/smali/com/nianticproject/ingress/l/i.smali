.class final Lcom/nianticproject/ingress/l/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/location/Location;

.field final synthetic b:Lcom/nianticproject/ingress/l/f;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/l/f;Landroid/location/Location;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 267
    iput-object p1, p0, Lcom/nianticproject/ingress/l/i;->b:Lcom/nianticproject/ingress/l/f;

    iput-object p2, p0, Lcom/nianticproject/ingress/l/i;->a:Landroid/location/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/nianticproject/ingress/l/i;->b:Lcom/nianticproject/ingress/l/f;

    iget-object v1, p0, Lcom/nianticproject/ingress/l/i;->a:Landroid/location/Location;

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/l/f;->b(Lcom/nianticproject/ingress/l/f;Landroid/location/Location;)V

    .line 271
    return-void
.end method
