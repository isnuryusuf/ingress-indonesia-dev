.class final Lcom/nianticproject/ingress/cr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/l/ad;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/cq;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/cq;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/nianticproject/ingress/cr;->a:Lcom/nianticproject/ingress/cq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/location/Location;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/nianticproject/ingress/cr;->a:Lcom/nianticproject/ingress/cq;

    invoke-static {v0}, Lcom/nianticproject/ingress/cq;->a(Lcom/nianticproject/ingress/cq;)Lcom/nianticproject/ingress/l/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/l/f;->b()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method
