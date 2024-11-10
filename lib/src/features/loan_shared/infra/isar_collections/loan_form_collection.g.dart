// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loan_form_collection.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetLoanFormCollectionCollection on Isar {
  IsarCollection<LoanFormCollection> get loanFormCollections =>
      this.collection();
}

const LoanFormCollectionSchema = CollectionSchema(
  name: r'LoanFormCollection',
  id: 1010925929940717422,
  properties: {
    r'amount': PropertySchema(
      id: 0,
      name: r'amount',
      type: IsarType.long,
    ),
    r'interestRate': PropertySchema(
      id: 1,
      name: r'interestRate',
      type: IsarType.double,
    ),
    r'paymentType': PropertySchema(
      id: 2,
      name: r'paymentType',
      type: IsarType.byte,
      enumMap: _LoanFormCollectionpaymentTypeEnumValueMap,
    ),
    r'termInMonths': PropertySchema(
      id: 3,
      name: r'termInMonths',
      type: IsarType.long,
    )
  },
  estimateSize: _loanFormCollectionEstimateSize,
  serialize: _loanFormCollectionSerialize,
  deserialize: _loanFormCollectionDeserialize,
  deserializeProp: _loanFormCollectionDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _loanFormCollectionGetId,
  getLinks: _loanFormCollectionGetLinks,
  attach: _loanFormCollectionAttach,
  version: '3.1.0+1',
);

int _loanFormCollectionEstimateSize(
  LoanFormCollection object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _loanFormCollectionSerialize(
  LoanFormCollection object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.amount);
  writer.writeDouble(offsets[1], object.interestRate);
  writer.writeByte(offsets[2], object.paymentType.index);
  writer.writeLong(offsets[3], object.termInMonths);
}

LoanFormCollection _loanFormCollectionDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = LoanFormCollection();
  object.amount = reader.readLong(offsets[0]);
  object.id = id;
  object.interestRate = reader.readDouble(offsets[1]);
  object.paymentType = _LoanFormCollectionpaymentTypeValueEnumMap[
          reader.readByteOrNull(offsets[2])] ??
      PaymentType.annuity;
  object.termInMonths = reader.readLong(offsets[3]);
  return object;
}

P _loanFormCollectionDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readDouble(offset)) as P;
    case 2:
      return (_LoanFormCollectionpaymentTypeValueEnumMap[
              reader.readByteOrNull(offset)] ??
          PaymentType.annuity) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _LoanFormCollectionpaymentTypeEnumValueMap = {
  'annuity': 0,
  'differentiated': 1,
};
const _LoanFormCollectionpaymentTypeValueEnumMap = {
  0: PaymentType.annuity,
  1: PaymentType.differentiated,
};

Id _loanFormCollectionGetId(LoanFormCollection object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _loanFormCollectionGetLinks(
    LoanFormCollection object) {
  return [];
}

void _loanFormCollectionAttach(
    IsarCollection<dynamic> col, Id id, LoanFormCollection object) {
  object.id = id;
}

extension LoanFormCollectionQueryWhereSort
    on QueryBuilder<LoanFormCollection, LoanFormCollection, QWhere> {
  QueryBuilder<LoanFormCollection, LoanFormCollection, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension LoanFormCollectionQueryWhere
    on QueryBuilder<LoanFormCollection, LoanFormCollection, QWhereClause> {
  QueryBuilder<LoanFormCollection, LoanFormCollection, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<LoanFormCollection, LoanFormCollection, QAfterWhereClause>
      idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<LoanFormCollection, LoanFormCollection, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<LoanFormCollection, LoanFormCollection, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<LoanFormCollection, LoanFormCollection, QAfterWhereClause>
      idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension LoanFormCollectionQueryFilter
    on QueryBuilder<LoanFormCollection, LoanFormCollection, QFilterCondition> {
  QueryBuilder<LoanFormCollection, LoanFormCollection, QAfterFilterCondition>
      amountEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'amount',
        value: value,
      ));
    });
  }

  QueryBuilder<LoanFormCollection, LoanFormCollection, QAfterFilterCondition>
      amountGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'amount',
        value: value,
      ));
    });
  }

  QueryBuilder<LoanFormCollection, LoanFormCollection, QAfterFilterCondition>
      amountLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'amount',
        value: value,
      ));
    });
  }

  QueryBuilder<LoanFormCollection, LoanFormCollection, QAfterFilterCondition>
      amountBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'amount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LoanFormCollection, LoanFormCollection, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<LoanFormCollection, LoanFormCollection, QAfterFilterCondition>
      idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<LoanFormCollection, LoanFormCollection, QAfterFilterCondition>
      idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<LoanFormCollection, LoanFormCollection, QAfterFilterCondition>
      idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LoanFormCollection, LoanFormCollection, QAfterFilterCondition>
      interestRateEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'interestRate',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LoanFormCollection, LoanFormCollection, QAfterFilterCondition>
      interestRateGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'interestRate',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LoanFormCollection, LoanFormCollection, QAfterFilterCondition>
      interestRateLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'interestRate',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LoanFormCollection, LoanFormCollection, QAfterFilterCondition>
      interestRateBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'interestRate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<LoanFormCollection, LoanFormCollection, QAfterFilterCondition>
      paymentTypeEqualTo(PaymentType value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'paymentType',
        value: value,
      ));
    });
  }

  QueryBuilder<LoanFormCollection, LoanFormCollection, QAfterFilterCondition>
      paymentTypeGreaterThan(
    PaymentType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'paymentType',
        value: value,
      ));
    });
  }

  QueryBuilder<LoanFormCollection, LoanFormCollection, QAfterFilterCondition>
      paymentTypeLessThan(
    PaymentType value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'paymentType',
        value: value,
      ));
    });
  }

  QueryBuilder<LoanFormCollection, LoanFormCollection, QAfterFilterCondition>
      paymentTypeBetween(
    PaymentType lower,
    PaymentType upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'paymentType',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<LoanFormCollection, LoanFormCollection, QAfterFilterCondition>
      termInMonthsEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'termInMonths',
        value: value,
      ));
    });
  }

  QueryBuilder<LoanFormCollection, LoanFormCollection, QAfterFilterCondition>
      termInMonthsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'termInMonths',
        value: value,
      ));
    });
  }

  QueryBuilder<LoanFormCollection, LoanFormCollection, QAfterFilterCondition>
      termInMonthsLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'termInMonths',
        value: value,
      ));
    });
  }

  QueryBuilder<LoanFormCollection, LoanFormCollection, QAfterFilterCondition>
      termInMonthsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'termInMonths',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension LoanFormCollectionQueryObject
    on QueryBuilder<LoanFormCollection, LoanFormCollection, QFilterCondition> {}

extension LoanFormCollectionQueryLinks
    on QueryBuilder<LoanFormCollection, LoanFormCollection, QFilterCondition> {}

extension LoanFormCollectionQuerySortBy
    on QueryBuilder<LoanFormCollection, LoanFormCollection, QSortBy> {
  QueryBuilder<LoanFormCollection, LoanFormCollection, QAfterSortBy>
      sortByAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'amount', Sort.asc);
    });
  }

  QueryBuilder<LoanFormCollection, LoanFormCollection, QAfterSortBy>
      sortByAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'amount', Sort.desc);
    });
  }

  QueryBuilder<LoanFormCollection, LoanFormCollection, QAfterSortBy>
      sortByInterestRate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'interestRate', Sort.asc);
    });
  }

  QueryBuilder<LoanFormCollection, LoanFormCollection, QAfterSortBy>
      sortByInterestRateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'interestRate', Sort.desc);
    });
  }

  QueryBuilder<LoanFormCollection, LoanFormCollection, QAfterSortBy>
      sortByPaymentType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentType', Sort.asc);
    });
  }

  QueryBuilder<LoanFormCollection, LoanFormCollection, QAfterSortBy>
      sortByPaymentTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentType', Sort.desc);
    });
  }

  QueryBuilder<LoanFormCollection, LoanFormCollection, QAfterSortBy>
      sortByTermInMonths() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'termInMonths', Sort.asc);
    });
  }

  QueryBuilder<LoanFormCollection, LoanFormCollection, QAfterSortBy>
      sortByTermInMonthsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'termInMonths', Sort.desc);
    });
  }
}

extension LoanFormCollectionQuerySortThenBy
    on QueryBuilder<LoanFormCollection, LoanFormCollection, QSortThenBy> {
  QueryBuilder<LoanFormCollection, LoanFormCollection, QAfterSortBy>
      thenByAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'amount', Sort.asc);
    });
  }

  QueryBuilder<LoanFormCollection, LoanFormCollection, QAfterSortBy>
      thenByAmountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'amount', Sort.desc);
    });
  }

  QueryBuilder<LoanFormCollection, LoanFormCollection, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<LoanFormCollection, LoanFormCollection, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<LoanFormCollection, LoanFormCollection, QAfterSortBy>
      thenByInterestRate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'interestRate', Sort.asc);
    });
  }

  QueryBuilder<LoanFormCollection, LoanFormCollection, QAfterSortBy>
      thenByInterestRateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'interestRate', Sort.desc);
    });
  }

  QueryBuilder<LoanFormCollection, LoanFormCollection, QAfterSortBy>
      thenByPaymentType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentType', Sort.asc);
    });
  }

  QueryBuilder<LoanFormCollection, LoanFormCollection, QAfterSortBy>
      thenByPaymentTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'paymentType', Sort.desc);
    });
  }

  QueryBuilder<LoanFormCollection, LoanFormCollection, QAfterSortBy>
      thenByTermInMonths() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'termInMonths', Sort.asc);
    });
  }

  QueryBuilder<LoanFormCollection, LoanFormCollection, QAfterSortBy>
      thenByTermInMonthsDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'termInMonths', Sort.desc);
    });
  }
}

extension LoanFormCollectionQueryWhereDistinct
    on QueryBuilder<LoanFormCollection, LoanFormCollection, QDistinct> {
  QueryBuilder<LoanFormCollection, LoanFormCollection, QDistinct>
      distinctByAmount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'amount');
    });
  }

  QueryBuilder<LoanFormCollection, LoanFormCollection, QDistinct>
      distinctByInterestRate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'interestRate');
    });
  }

  QueryBuilder<LoanFormCollection, LoanFormCollection, QDistinct>
      distinctByPaymentType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'paymentType');
    });
  }

  QueryBuilder<LoanFormCollection, LoanFormCollection, QDistinct>
      distinctByTermInMonths() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'termInMonths');
    });
  }
}

extension LoanFormCollectionQueryProperty
    on QueryBuilder<LoanFormCollection, LoanFormCollection, QQueryProperty> {
  QueryBuilder<LoanFormCollection, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<LoanFormCollection, int, QQueryOperations> amountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'amount');
    });
  }

  QueryBuilder<LoanFormCollection, double, QQueryOperations>
      interestRateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'interestRate');
    });
  }

  QueryBuilder<LoanFormCollection, PaymentType, QQueryOperations>
      paymentTypeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'paymentType');
    });
  }

  QueryBuilder<LoanFormCollection, int, QQueryOperations>
      termInMonthsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'termInMonths');
    });
  }
}
