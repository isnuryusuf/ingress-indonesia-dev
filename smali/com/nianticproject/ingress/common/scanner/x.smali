.class final Lcom/nianticproject/ingress/common/scanner/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/scanner/ev;


# instance fields
.field final synthetic a:Lcom/nianticproject/ingress/common/scanner/w;


# direct methods
.method constructor <init>(Lcom/nianticproject/ingress/common/scanner/w;)V
    .locals 0
    .parameter

    .prologue
    .line 1089
    iput-object p1, p0, Lcom/nianticproject/ingress/common/scanner/x;->a:Lcom/nianticproject/ingress/common/scanner/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/nianticproject/ingress/common/ui/elements/ModalDialog;
    .locals 2

    .prologue
    .line 1092
    new-instance v0, Lcom/nianticproject/ingress/common/ui/elements/InvitesReminderDialog;

    iget-object v1, p0, Lcom/nianticproject/ingress/common/scanner/x;->a:Lcom/nianticproject/ingress/common/scanner/w;

    iget-object v1, v1, Lcom/nianticproject/ingress/common/scanner/w;->b:Lcom/nianticproject/ingress/common/scanner/k;

    invoke-static {v1}, Lcom/nianticproject/ingress/common/scanner/k;->h(Lcom/nianticproject/ingress/common/scanner/k;)Lcom/nianticproject/ingress/common/ac;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/ui/elements/InvitesReminderDialog;-><init>(Lcom/nianticproject/ingress/common/ac;)V

    return-object v0
.end method
