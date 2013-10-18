.class public final Lcom/b/a/a/a/b;
.super Lorg/codehaus/jackson/map/Module;
.source "SourceFile"


# static fields
.field private static final b:Lorg/codehaus/jackson/Version;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 11
    new-instance v0, Lorg/codehaus/jackson/Version;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v3, v1, v3, v2}, Lorg/codehaus/jackson/Version;-><init>(IIILjava/lang/String;)V

    sput-object v0, Lcom/b/a/a/a/b;->b:Lorg/codehaus/jackson/Version;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lorg/codehaus/jackson/map/Module;-><init>()V

    .line 8
    const-string/jumbo v0, "GuavaModule"

    iput-object v0, p0, Lcom/b/a/a/a/b;->a:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public final getModuleName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    const-string/jumbo v0, "GuavaModule"

    return-object v0
.end method

.method public final setupModule(Lorg/codehaus/jackson/map/Module$SetupContext;)V
    .locals 1
    .parameter

    .prologue
    .line 24
    new-instance v0, Lcom/b/a/a/a/a;

    invoke-direct {v0}, Lcom/b/a/a/a/a;-><init>()V

    invoke-interface {p1, v0}, Lorg/codehaus/jackson/map/Module$SetupContext;->addDeserializers(Lorg/codehaus/jackson/map/Deserializers;)V

    .line 25
    return-void
.end method

.method public final version()Lorg/codehaus/jackson/Version;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/b/a/a/a/b;->b:Lorg/codehaus/jackson/Version;

    return-object v0
.end method
