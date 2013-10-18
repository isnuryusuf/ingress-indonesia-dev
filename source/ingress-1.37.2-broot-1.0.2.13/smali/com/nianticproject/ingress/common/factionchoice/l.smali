.class final Lcom/nianticproject/ingress/common/factionchoice/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/factionchoice/d;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/factionchoice/d;)V
    .locals 0
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/nianticproject/ingress/common/factionchoice/l;->a:Lcom/nianticproject/ingress/common/factionchoice/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/l;->a:Lcom/nianticproject/ingress/common/factionchoice/d;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/factionchoice/d;->h(Lcom/nianticproject/ingress/common/factionchoice/d;)Lcom/nianticproject/ingress/common/ui/t;

    move-result-object v0

    const-class v1, Lcom/nianticproject/ingress/common/scanner/k;

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/ui/t;->b(Ljava/lang/Class;)Lcom/nianticproject/ingress/common/ui/m;

    .line 225
    return-void
.end method
