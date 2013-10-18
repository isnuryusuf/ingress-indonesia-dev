.class public final Lcom/nianticproject/ingress/common/ui/elements/bc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/Runnable;

.field public final c:Z

.field private d:Z

.field private e:Lcom/badlogic/gdx/math/Vector2;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Runnable;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/elements/bc;->a:Ljava/lang/String;

    .line 112
    iput-object p2, p0, Lcom/nianticproject/ingress/common/ui/elements/bc;->b:Ljava/lang/Runnable;

    .line 113
    iput-boolean p3, p0, Lcom/nianticproject/ingress/common/ui/elements/bc;->c:Z

    .line 114
    return-void
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/ui/elements/bc;)Lcom/badlogic/gdx/math/Vector2;
    .locals 1
    .parameter

    .prologue
    .line 105
    iget-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/bc;->e:Lcom/badlogic/gdx/math/Vector2;

    return-object v0
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/ui/elements/bc;Lcom/badlogic/gdx/math/Vector2;)Lcom/badlogic/gdx/math/Vector2;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/nianticproject/ingress/common/ui/elements/bc;->e:Lcom/badlogic/gdx/math/Vector2;

    return-object p1
.end method

.method static synthetic a(Lcom/nianticproject/ingress/common/ui/elements/bc;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/nianticproject/ingress/common/ui/elements/bc;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/nianticproject/ingress/common/ui/elements/bc;)Z
    .locals 1
    .parameter

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/elements/bc;->d:Z

    return v0
.end method
