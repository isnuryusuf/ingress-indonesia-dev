.class public Lcom/nianticproject/ingress/knobs/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/nianticproject/ingress/knobs/b;


# static fields
.field private static final a:Lcom/nianticproject/ingress/common/w/aa;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 21
    new-instance v0, Lcom/nianticproject/ingress/common/w/aa;

    const-class v1, Lcom/nianticproject/ingress/knobs/a;

    invoke-direct {v0, v1}, Lcom/nianticproject/ingress/common/w/aa;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/nianticproject/ingress/knobs/a;->a:Lcom/nianticproject/ingress/common/w/aa;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 3

    .prologue
    .line 26
    :try_start_0
    invoke-static {}, Lcom/nianticproject/ingress/NemesisApplication;->a()Lcom/nianticproject/ingress/NemesisApplication;

    move-result-object v0

    .line 27
    invoke-static {v0}, Lcom/nianticproject/ingress/ec;->a(Landroid/content/Context;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 31
    :goto_0
    return v0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    sget-object v1, Lcom/nianticproject/ingress/knobs/a;->a:Lcom/nianticproject/ingress/common/w/aa;

    const-string/jumbo v2, "NameNotFoundException when attempting to get the application version code. Returning 0 instead."

    invoke-virtual {v1, v0, v2}, Lcom/nianticproject/ingress/common/w/aa;->b(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 31
    const/4 v0, 0x0

    goto :goto_0
.end method
