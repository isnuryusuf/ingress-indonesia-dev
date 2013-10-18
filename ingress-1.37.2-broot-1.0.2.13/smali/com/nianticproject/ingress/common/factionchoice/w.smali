.class final Lcom/nianticproject/ingress/common/factionchoice/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/factionchoice/az;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/factionchoice/n;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/factionchoice/n;)V
    .locals 0
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/nianticproject/ingress/common/factionchoice/w;->a:Lcom/nianticproject/ingress/common/factionchoice/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/w;->a:Lcom/nianticproject/ingress/common/factionchoice/n;

    sget-object v1, Lcom/nianticproject/ingress/shared/ai;->a:Lcom/nianticproject/ingress/shared/ai;

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/factionchoice/n;->a(Lcom/nianticproject/ingress/common/factionchoice/n;Lcom/nianticproject/ingress/shared/ai;)Lcom/nianticproject/ingress/common/f/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/f/m;->e()Lcom/nianticproject/ingress/common/f/a;

    .line 276
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/w;->a:Lcom/nianticproject/ingress/common/factionchoice/n;

    sget-object v1, Lcom/nianticproject/ingress/shared/ai;->b:Lcom/nianticproject/ingress/shared/ai;

    invoke-static {v0, v1}, Lcom/nianticproject/ingress/common/factionchoice/n;->a(Lcom/nianticproject/ingress/common/factionchoice/n;Lcom/nianticproject/ingress/shared/ai;)Lcom/nianticproject/ingress/common/f/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/f/m;->e()Lcom/nianticproject/ingress/common/f/a;

    .line 282
    return-void
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 286
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
