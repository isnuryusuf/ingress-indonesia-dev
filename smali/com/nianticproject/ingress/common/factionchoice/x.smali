.class final Lcom/nianticproject/ingress/common/factionchoice/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/widget/z;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/factionchoice/n;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/factionchoice/n;)V
    .locals 0
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/nianticproject/ingress/common/factionchoice/x;->a:Lcom/nianticproject/ingress/common/factionchoice/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(FF)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 293
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/x;->a:Lcom/nianticproject/ingress/common/factionchoice/n;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/factionchoice/n;->i(Lcom/nianticproject/ingress/common/factionchoice/n;)Lcom/nianticproject/ingress/common/w/b;

    move-result-object v0

    invoke-static {}, Lcom/nianticproject/ingress/common/factionchoice/n;->f()Lcom/nianticproject/ingress/common/w/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nianticproject/ingress/common/w/b;->a(Lcom/nianticproject/ingress/common/w/d;)V

    .line 294
    return-void
.end method
