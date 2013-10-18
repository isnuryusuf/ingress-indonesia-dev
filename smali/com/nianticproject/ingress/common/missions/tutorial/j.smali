.class final Lcom/nianticproject/ingress/common/missions/tutorial/j;
.super Lcom/nianticproject/ingress/common/w/g;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/missions/tutorial/u;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/missions/tutorial/u;)V
    .locals 1
    .parameter

    .prologue
    .line 23
    const-string/jumbo v0, "PortalIntroState"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/w/g;-><init>(Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/tutorial/j;->a:Lcom/nianticproject/ingress/common/missions/tutorial/u;

    .line 25
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/missions/tutorial/j;)Lcom/nianticproject/ingress/common/missions/tutorial/u;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/j;->a:Lcom/nianticproject/ingress/common/missions/tutorial/u;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/nianticproject/ingress/common/missions/tutorial/k;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/missions/tutorial/k;-><init>(Lcom/nianticproject/ingress/common/missions/tutorial/j;)V

    .line 50
    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/tutorial/j;->a:Lcom/nianticproject/ingress/common/missions/tutorial/u;

    invoke-interface {v1, v0}, Lcom/nianticproject/ingress/common/missions/tutorial/u;->a(Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;)V

    .line 51
    return-void
.end method
