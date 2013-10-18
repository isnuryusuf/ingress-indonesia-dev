.class final Lcom/nianticproject/ingress/common/g/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/k/y;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/g/p;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/g/p;)V
    .locals 0
    .parameter

    .prologue
    .line 633
    iput-object p1, p0, Lcom/nianticproject/ingress/common/g/q;->a:Lcom/nianticproject/ingress/common/g/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 636
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/q;->a:Lcom/nianticproject/ingress/common/g/p;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/g/p;->a(Lcom/nianticproject/ingress/common/g/p;)Lcom/nianticproject/ingress/common/ui/t;

    move-result-object v0

    const-class v1, Lcom/nianticproject/ingress/common/missions/a/r;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/t;->b(Ljava/lang/Class;)Lcom/nianticproject/ingress/common/ui/m;

    .line 637
    return-void
.end method
