.class public final Lcom/nianticproject/ingress/common/ui/b/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/nianticproject/ingress/common/w/f;

.field public static final b:Lcom/nianticproject/ingress/common/w/f;

.field public static final c:Lcom/nianticproject/ingress/common/w/f;

.field public static final d:Lcom/nianticproject/ingress/common/w/f;

.field public static final e:Lcom/nianticproject/ingress/common/w/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    new-instance v0, Lcom/nianticproject/ingress/common/w/f;

    const-string/jumbo v1, "INITIALIZED"

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/nianticproject/ingress/common/ui/b/a;->a:Lcom/nianticproject/ingress/common/w/f;

    .line 14
    new-instance v0, Lcom/nianticproject/ingress/common/w/f;

    const-string/jumbo v1, "CREATED"

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/nianticproject/ingress/common/ui/b/a;->b:Lcom/nianticproject/ingress/common/w/f;

    .line 15
    new-instance v0, Lcom/nianticproject/ingress/common/w/f;

    const-string/jumbo v1, "RESUMED"

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/nianticproject/ingress/common/ui/b/a;->c:Lcom/nianticproject/ingress/common/w/f;

    .line 16
    new-instance v0, Lcom/nianticproject/ingress/common/w/f;

    const-string/jumbo v1, "PAUSED"

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/nianticproject/ingress/common/ui/b/a;->d:Lcom/nianticproject/ingress/common/w/f;

    .line 17
    new-instance v0, Lcom/nianticproject/ingress/common/w/f;

    const-string/jumbo v1, "DESTROYED"

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/f;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/nianticproject/ingress/common/ui/b/a;->e:Lcom/nianticproject/ingress/common/w/f;

    return-void
.end method
