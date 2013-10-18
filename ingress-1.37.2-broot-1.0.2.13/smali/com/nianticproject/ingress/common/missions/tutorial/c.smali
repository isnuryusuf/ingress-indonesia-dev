.class final Lcom/nianticproject/ingress/common/missions/tutorial/c;
.super Lcom/nianticproject/ingress/common/w/g;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/missions/tutorial/u;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/missions/tutorial/u;)V
    .locals 1
    .parameter

    .prologue
    .line 20
    const-string/jumbo v0, "FireXmpDoneState"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/w/g;-><init>(Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/tutorial/c;->a:Lcom/nianticproject/ingress/common/missions/tutorial/u;

    .line 22
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/nianticproject/ingress/common/missions/tutorial/d;

    invoke-direct {v0, p0}, Lcom/nianticproject/ingress/common/missions/tutorial/d;-><init>(Lcom/nianticproject/ingress/common/missions/tutorial/c;)V

    .line 35
    iget-object v1, p0, Lcom/nianticproject/ingress/common/missions/tutorial/c;->a:Lcom/nianticproject/ingress/common/missions/tutorial/u;

    invoke-interface {v1, v0}, Lcom/nianticproject/ingress/common/missions/tutorial/u;->a(Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;)V

    .line 36
    return-void
.end method
