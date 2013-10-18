.class final Lcom/nianticproject/ingress/common/ui/elements/bl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/common/ui/widget/c;


# instance fields
.field a:Z

.field b:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/elements/bl;->a:Z

    .line 34
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nianticproject/ingress/common/ui/elements/bl;->b:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/nianticproject/ingress/common/ui/elements/bl;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/elements/bl;->a:Z

    .line 44
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/nianticproject/ingress/common/ui/elements/bl;->a:Z

    .line 39
    return-void
.end method

.method public final a(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/nianticproject/ingress/common/ui/elements/bl;->a:Z

    .line 54
    iput-object p2, p0, Lcom/nianticproject/ingress/common/ui/elements/bl;->b:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public final a()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/elements/bl;->a:Z

    return v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nianticproject/ingress/common/ui/elements/bl;->a:Z

    .line 49
    return-void
.end method
