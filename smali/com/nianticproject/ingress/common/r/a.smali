.class public Lcom/nianticproject/ingress/common/r/a;
.super Lcom/nianticproject/ingress/common/ui/h;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/ac;Lcom/nianticproject/ingress/common/ui/widget/af;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 20
    const-string/jumbo v1, "PASSCODE"

    sget-object v4, Lcom/nianticproject/ingress/common/ui/widget/ag;->f:Lcom/nianticproject/ingress/common/ui/widget/ag;

    const-string/jumbo v5, ""

    const-string/jumbo v6, "Redeem Passcode"

    const v7, 0x3f19999a

    const/high16 v8, 0x3f00

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v8}, Lcom/nianticproject/ingress/common/ui/h;-><init>(Ljava/lang/String;Lcom/nianticproject/ingress/common/ac;Lcom/nianticproject/ingress/common/ui/widget/af;Lcom/nianticproject/ingress/common/ui/widget/ag;Ljava/lang/String;Ljava/lang/String;FF)V

    .line 22
    return-void
.end method


# virtual methods
.method protected final a(Lcom/nianticproject/ingress/common/ac;)V
    .locals 0
    .parameter

    .prologue
    .line 26
    invoke-interface {p1}, Lcom/nianticproject/ingress/common/ac;->a()V

    .line 27
    return-void
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string/jumbo v0, "PasscodeTabActivity"

    return-object v0
.end method
