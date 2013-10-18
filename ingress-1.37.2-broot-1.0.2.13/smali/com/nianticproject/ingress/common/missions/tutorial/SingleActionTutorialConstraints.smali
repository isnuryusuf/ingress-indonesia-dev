.class public Lcom/nianticproject/ingress/common/missions/tutorial/SingleActionTutorialConstraints;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/missions/tutorial/TutorialConstraints;


# instance fields
.field private final permitted:Lcom/nianticproject/ingress/common/missions/tutorial/t;


# direct methods
.method public constructor <init>(Lcom/nianticproject/ingress/common/missions/tutorial/t;)V
    .locals 1
    .parameter

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    if-eqz p1, :cond_0

    sget-object v0, Lcom/nianticproject/ingress/common/missions/tutorial/t;->c:Lcom/nianticproject/ingress/common/missions/tutorial/t;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/a/a/an;->a(Z)V

    .line 10
    iput-object p1, p0, Lcom/nianticproject/ingress/common/missions/tutorial/SingleActionTutorialConstraints;->permitted:Lcom/nianticproject/ingress/common/missions/tutorial/t;

    .line 11
    return-void

    .line 9
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public permits(Lcom/nianticproject/ingress/common/missions/tutorial/t;)Z
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lcom/nianticproject/ingress/common/missions/tutorial/SingleActionTutorialConstraints;->permitted:Lcom/nianticproject/ingress/common/missions/tutorial/t;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
