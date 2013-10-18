.class public abstract Lorg/codehaus/jackson/map/deser/impl/PropertyValue;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final next:Lorg/codehaus/jackson/map/deser/impl/PropertyValue;

.field public final value:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(Lorg/codehaus/jackson/map/deser/impl/PropertyValue;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/codehaus/jackson/map/deser/impl/PropertyValue;->next:Lorg/codehaus/jackson/map/deser/impl/PropertyValue;

    .line 24
    iput-object p2, p0, Lorg/codehaus/jackson/map/deser/impl/PropertyValue;->value:Ljava/lang/Object;

    .line 25
    return-void
.end method


# virtual methods
.method public abstract assign(Ljava/lang/Object;)V
.end method
