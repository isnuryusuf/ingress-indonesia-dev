.class final Lcom/nianticproject/ingress/common/inventory/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/g/g;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/g/d;

.field final synthetic b:Lcom/nianticproject/ingress/common/inventory/a;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/inventory/a;Lcom/nianticproject/ingress/common/g/d;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/nianticproject/ingress/common/inventory/d;->b:Lcom/nianticproject/ingress/common/inventory/a;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/inventory/d;->a:Lcom/nianticproject/ingress/common/g/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/d;->a:Lcom/nianticproject/ingress/common/g/d;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/d;->e()V

    .line 70
    return-void
.end method
