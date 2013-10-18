.class final Lcom/nianticproject/ingress/dz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/dv;

.field final synthetic b:Lcom/nianticproject/ingress/dy;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/dy;Lcom/nianticproject/ingress/dv;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/nianticproject/ingress/dz;->b:Lcom/nianticproject/ingress/dy;

    iput-object p2, p0, Lcom/nianticproject/ingress/dz;->a:Lcom/nianticproject/ingress/dv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/nianticproject/ingress/dz;->b:Lcom/nianticproject/ingress/dy;

    iget-object v0, v0, Lcom/nianticproject/ingress/dy;->d:Lcom/nianticproject/ingress/dw;

    iget-object v1, p0, Lcom/nianticproject/ingress/dz;->a:Lcom/nianticproject/ingress/dv;

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/dw;->a(Lcom/nianticproject/ingress/dw;Lcom/nianticproject/ingress/dv;)V

    .line 184
    return-void
.end method
