.class public final Lcom/nianticproject/ingress/common/playerprofile/l;
.super Lcom/nianticproject/ingress/common/ui/a;
.source "SourceFile"


# instance fields
.field private final a:Lcom/nianticproject/ingress/common/playerprofile/m;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/nianticproject/ingress/common/playerprofile/j;Lcom/nianticproject/ingress/shared/ai;ILcom/nianticproject/ingress/common/j/av;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    const-string/jumbo v0, "AvatarSelectionActivity"

    invoke-direct {p0, v0}, Lcom/nianticproject/ingress/common/ui/a;-><init>(Ljava/lang/String;)V

    .line 38
    new-instance v0, Lcom/nianticproject/ingress/common/playerprofile/o;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/nianticproject/ingress/common/playerprofile/o;-><init>(Lcom/nianticproject/ingress/common/playerprofile/j;Lcom/nianticproject/ingress/shared/ai;ILcom/nianticproject/ingress/common/j/av;)V

    .line 43
    new-instance v1, Lcom/nianticproject/ingress/common/playerprofile/m;

    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nianticproject/ingress/common/g/p;->E()Lcom/nianticproject/ingress/common/playerprofile/ax;

    move-result-object v2

    invoke-static {}, Lcom/nianticproject/ingress/common/g/p;->a()Lcom/nianticproject/ingress/common/g/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nianticproject/ingress/common/g/p;->b()Lcom/nianticproject/ingress/common/model/k;

    move-result-object v3

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/nianticproject/ingress/common/playerprofile/m;-><init>(Ljava/lang/String;Lcom/nianticproject/ingress/common/playerprofile/o;Lcom/nianticproject/ingress/common/playerprofile/ax;Lcom/nianticproject/ingress/common/model/k;)V

    iput-object v1, p0, Lcom/nianticproject/ingress/common/playerprofile/l;->a:Lcom/nianticproject/ingress/common/playerprofile/m;

    .line 49
    invoke-virtual {p0}, Lcom/nianticproject/ingress/common/playerprofile/l;->K()Lcom/nianticproject/ingress/common/ui/ad;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nianticproject/ingress/common/ui/ad;->a(Lcom/nianticproject/ingress/common/ui/ac;)V

    .line 50
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Lcom/nianticproject/ingress/common/ui/a;->a()V

    .line 56
    iget-object v0, p0, Lcom/nianticproject/ingress/common/playerprofile/l;->a:Lcom/nianticproject/ingress/common/playerprofile/m;

    invoke-virtual {v0}, Lcom/nianticproject/ingress/common/playerprofile/m;->e()V

    .line 57
    return-void
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string/jumbo v0, "AvatarSelectionActivity"

    return-object v0
.end method
