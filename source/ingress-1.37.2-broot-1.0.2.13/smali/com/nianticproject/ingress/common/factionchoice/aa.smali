.class final Lcom/nianticproject/ingress/common/factionchoice/aa;
.super Lcom/nianticproject/ingress/common/w/g;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/factionchoice/n;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/factionchoice/n;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/nianticproject/ingress/common/factionchoice/aa;->a:Lcom/nianticproject/ingress/common/factionchoice/n;

    invoke-direct {p0, p2}, Lcom/nianticproject/ingress/common/w/g;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    .line 75
    iget-object v0, p0, Lcom/nianticproject/ingress/common/factionchoice/aa;->a:Lcom/nianticproject/ingress/common/factionchoice/n;

    invoke-static {v0}, Lcom/nianticproject/ingress/common/factionchoice/n;->c(Lcom/nianticproject/ingress/common/factionchoice/n;)Lcom/nianticproject/ingress/common/factionchoice/d;

    move-result-object v0

    sget-object v1, Lcom/nianticproject/ingress/shared/ai;->b:Lcom/nianticproject/ingress/shared/ai;

    new-instance v2, Lcom/nianticproject/ingress/common/factionchoice/ab;

    invoke-direct {v2, p0}, Lcom/nianticproject/ingress/common/factionchoice/ab;-><init>(Lcom/nianticproject/ingress/common/factionchoice/aa;)V

    const-string/jumbo v3, "The Human Resistance revile us, because they fear tomorrow.  They fear change.  They fear the Enlightened.  Do you? I have planted a patch on your device.  Join us.  Become Enlightened.\n\n"

    sget-object v4, Lcom/nianticproject/ingress/common/c/bs;->m:Lcom/nianticproject/ingress/common/c/bs;

    invoke-virtual {v4}, Lcom/nianticproject/ingress/common/c/bs;->c()F

    move-result v4

    iget-object v5, p0, Lcom/nianticproject/ingress/common/factionchoice/aa;->a:Lcom/nianticproject/ingress/common/factionchoice/n;

    invoke-static {v5}, Lcom/nianticproject/ingress/common/factionchoice/n;->b(Lcom/nianticproject/ingress/common/factionchoice/n;)Lcom/nianticproject/ingress/common/ui/widget/z;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/nianticproject/ingress/common/factionchoice/d;->a(Lcom/nianticproject/ingress/shared/ai;Lcom/nianticproject/ingress/common/missions/cs;Ljava/lang/String;FLcom/nianticproject/ingress/common/ui/widget/z;)V

    .line 85
    return-void
.end method
