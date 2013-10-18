.class final Lcom/nianticproject/ingress/common/inventory/ui/ai;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/inventory/ui/at;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/inventory/ui/v;

.field final synthetic b:Lcom/nianticproject/ingress/common/inventory/ui/ag;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/inventory/ui/ag;Lcom/nianticproject/ingress/common/inventory/ui/v;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 654
    iput-object p1, p0, Lcom/nianticproject/ingress/common/inventory/ui/ai;->b:Lcom/nianticproject/ingress/common/inventory/ui/ag;

    iput-object p2, p0, Lcom/nianticproject/ingress/common/inventory/ui/ai;->a:Lcom/nianticproject/ingress/common/inventory/ui/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 657
    iget-object v0, p0, Lcom/nianticproject/ingress/common/inventory/ui/ai;->b:Lcom/nianticproject/ingress/common/inventory/ui/ag;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/inventory/ui/ag;->a(Lcom/nianticproject/ingress/common/inventory/ui/ag;)Z

    .line 658
    return-void
.end method
