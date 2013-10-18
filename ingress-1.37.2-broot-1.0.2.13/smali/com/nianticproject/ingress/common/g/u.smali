.class final Lcom/nianticproject/ingress/common/g/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/g/f;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/g/p;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/g/p;)V
    .locals 0
    .parameter

    .prologue
    .line 912
    iput-object p1, p0, Lcom/nianticproject/ingress/common/g/u;->a:Lcom/nianticproject/ingress/common/g/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 915
    iget-object v0, p0, Lcom/nianticproject/ingress/common/g/u;->a:Lcom/nianticproject/ingress/common/g/p;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/g/p;->c(Lcom/nianticproject/ingress/common/g/p;)Lcom/nianticproject/ingress/common/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/g/c;->e()V

    .line 916
    return-void
.end method
